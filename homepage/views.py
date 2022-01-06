from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.models import User
from homepage.models import *
from django.core.paginator import Paginator
from django.core.mail import send_mail
from django.contrib import messages
from homepage.homefunction import *
import random
from django.contrib.auth.forms import (
    AuthenticationForm, PasswordChangeForm, PasswordResetForm, SetPasswordForm,
)
# introduction
def index(request):
    users = User.objects.all()
    headers = Header.objects.all()
    context = {
        'users': users,
        'headers': headers,
    }
    return render(request, 'homepage/index.html', context)

def about(request):
    headers = Header.objects.all()
    context = {
        'headers': headers,
    }
    return render(request, 'homepage/about.html', context)

def aboutbee(request):
    headers = Header.objects.all()
    context = {
        'headers': headers,
    }   
    return render(request, 'homepage/aboutbee.html', context)

# login - logout - dashboard
def myregister(request):
    message = ''
    # Nếu đã đăng nhập --> index
    if request.user.is_authenticated:
        return render(request, 'homepage/updateinfo.html')
    else:
        if request.method == 'POST':  
            username = request.POST.get('username')
            password1 = request.POST.get('password1')
            password2 = request.POST.get('password2')
            avatar = request.FILES.get('avatar')

            # Kiểm tra username, password1 và password2 có rỗng hoặc password1 != password2 hay không
            if username == '' or password1 == '' or password2 == '' or password1 != password2:
                return render(request, 'homepage/register.html')
            else:
                new_user = User()
                new_user.username = username
                new_user.set_password(password1)
                new_user.save()
                user = authenticate(username=username, password=password1)
                login(request, user)

                new_account = Account()
                new_account.username = new_user
                new_account.callsignid = CallSign.objects.get(pk = 1)
                new_account.password = password1
                new_account.experience = 0
                # new_account.avatar = tokenFile(avatar, username)
                new_account.avatar = tokenFile(avatar,'media/users', username ,1)

                new_account.save()
                # return render(request, 'homepage/updateinfo.html')
                return redirect('homepage:updateinfo')
        return render(request, 'homepage/register.html')

def updateinfo(request):
    if request.method == 'POST':
        firstname = request.POST.get('firstname')
        lastname = request.POST.get('lastname')
        userobject = request.POST.get('objectchoice')
        grade = request.POST.get('gradelevelchoice')
        yearofbirth = request.POST.get('yearofbirth')
        guardian = request.POST.get('guardian')
        email = request.POST.get('email')
        phone = request.POST.get('phone')

        print(userobject, grade)
        
        current_user = request.user
        account = Account.objects.get(username = current_user.id)

        new_user_detail = UserDetail()
        new_user_detail.accountid = account
        new_user_detail.lastname = lastname
        new_user_detail.firstname = firstname
        new_user_detail.objectchoice = userobject
        new_user_detail.gradelevel = grade
        new_user_detail.yearofbirth = yearofbirth
        new_user_detail.guardian = guardian
        new_user_detail.email = email
        new_user_detail.phone = phone
        new_user_detail.save()
    
        # print(new_account.avatar)
        return redirect('homepage:index')
    return render(request, 'homepage/updateinfo.html')

def mylogin(request):
    if request.user.is_authenticated: 
        return redirect('homepage:index')
    else:
        if request.method == 'POST':
            # Lấy username và password
            username = request.POST.get('username')
            password = request.POST.get('password')  
            # kiểm tra xem username và password có trong dữ liệu không
            user = authenticate(username=username, password=password)
            if user is not None: # Nếu tìm thấy user có username và password đã nhập
                if user.is_active: # Tài khoản có bị vô hiệu chưa - đã/ còn hiệu lực
                    print('active')
                    login(request, user)
                    # trả về trang index
                    return redirect('homepage:index')
                else:
                    return render(request, 'homepage/login.html', {'message':'Tài khoản đã bị vô hiệu hóa'})
            else:
                return render(request, 'homepage/login.html', {'message':'Tài khoản không tồn tại'})
        return render(request, 'homepage/login.html')
    
def mylogout(request):
    # Nếu không có tài khoản nào thì không thực hiện hàm đăng xuất
    try:
        logout(request)
    except:
        pass
    # Nếu đăng xuất thành công => trả về trang đăng nhập - login
    # return render(request, 'homepage/login.html')
    return redirect('homepage:index')

def resetpassword(request):
    # send_mail(
    #     'Subject here',
    #     'Here is the message.',
    #     'tuyethuynh2k31@gmail.com',
    #     ['tuyethuynh3036@gmail.com'],
    #     fail_silently=False,
    # )
    return render(request, 'homepage/resetpassword.html')

class PasswordContextMixin:
    extra_context = None

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context.update({
            'title': self.title,
            **(self.extra_context or {})
        })
        return context


class PasswordResetView(PasswordContextMixin, FormView):
    email_template_name = 'registration/password_reset_email.html'
    extra_email_context = None
    form_class = PasswordResetForm
    from_email = None
    html_email_template_name = None
    subject_template_name = 'registration/password_reset_subject.txt'
    success_url = reverse_lazy('password_reset_done')
    template_name = 'registration/password_reset_form.html'
    title = _('Password reset')
    token_generator = default_token_generator

    @method_decorator(csrf_protect)
    def dispatch(self, *args, **kwargs):
        return super().dispatch(*args, **kwargs)

    def form_valid(self, form):
        opts = {
            'use_https': self.request.is_secure(),
            'token_generator': self.token_generator,
            'from_email': self.from_email,
            'email_template_name': self.email_template_name,
            'subject_template_name': self.subject_template_name,
            'request': self.request,
            'html_email_template_name': self.html_email_template_name,
            'extra_email_context': self.extra_email_context,
        }
        form.save(**opts)
        return super().form_valid(form)


INTERNAL_RESET_SESSION_TOKEN = '_password_reset_token'


class PasswordResetDoneView(PasswordContextMixin, TemplateView):
    template_name = 'registration/password_reset_done.html'
    title = _('Password reset sent')


class PasswordResetConfirmView(PasswordContextMixin, FormView):
    form_class = SetPasswordForm
    post_reset_login = False
    post_reset_login_backend = None
    reset_url_token = 'set-password'
    success_url = reverse_lazy('password_reset_complete')
    template_name = 'registration/password_reset_confirm.html'
    title = _('Enter new password')
    token_generator = default_token_generator

    @method_decorator(sensitive_post_parameters())
    @method_decorator(never_cache)
    def dispatch(self, *args, **kwargs):
        assert 'uidb64' in kwargs and 'token' in kwargs

        self.validlink = False
        self.user = self.get_user(kwargs['uidb64'])

        if self.user is not None:
            token = kwargs['token']
            if token == self.reset_url_token:
                session_token = self.request.session.get(INTERNAL_RESET_SESSION_TOKEN)
                if self.token_generator.check_token(self.user, session_token):
                    # If the token is valid, display the password reset form.
                    self.validlink = True
                    return super().dispatch(*args, **kwargs)
            else:
                if self.token_generator.check_token(self.user, token):
                    # Store the token in the session and redirect to the
                    # password reset form at a URL without the token. That
                    # avoids the possibility of leaking the token in the
                    # HTTP Referer header.
                    self.request.session[INTERNAL_RESET_SESSION_TOKEN] = token
                    redirect_url = self.request.path.replace(token, self.reset_url_token)
                    return HttpResponseRedirect(redirect_url)

        # Display the "Password reset unsuccessful" page.
        return self.render_to_response(self.get_context_data())

    def get_user(self, uidb64):
        try:
            # urlsafe_base64_decode() decodes to bytestring
            uid = urlsafe_base64_decode(uidb64).decode()
            user = UserModel._default_manager.get(pk=uid)
        except (TypeError, ValueError, OverflowError, UserModel.DoesNotExist, ValidationError):
            user = None
        return user

    def get_form_kwargs(self):
        kwargs = super().get_form_kwargs()
        kwargs['user'] = self.user
        return kwargs

    def form_valid(self, form):
        user = form.save()
        del self.request.session[INTERNAL_RESET_SESSION_TOKEN]
        if self.post_reset_login:
            auth_login(self.request, user, self.post_reset_login_backend)
        return super().form_valid(form)

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        if self.validlink:
            context['validlink'] = True
        else:
            context.update({
                'form': None,
                'title': _('Password reset unsuccessful'),
                'validlink': False,
            })
        return context


class PasswordResetCompleteView(PasswordContextMixin, TemplateView):
    template_name = 'registration/password_reset_complete.html'
    title = _('Password reset complete')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['login_url'] = resolve_url(settings.LOGIN_URL)
        return context


class PasswordChangeView(PasswordContextMixin, FormView):
    form_class = PasswordChangeForm
    success_url = reverse_lazy('password_change_done')
    template_name = 'registration/password_change_form.html'
    title = _('Password change')

    @method_decorator(sensitive_post_parameters())
    @method_decorator(csrf_protect)
    @method_decorator(login_required)
    def dispatch(self, *args, **kwargs):
        return super().dispatch(*args, **kwargs)

    def get_form_kwargs(self):
        kwargs = super().get_form_kwargs()
        kwargs['user'] = self.request.user
        return kwargs

    def form_valid(self, form):
        form.save()
        # Updating the password logs out all other sessions for the user
        # except the current one.
        update_session_auth_hash(self.request, form.user)
        return super().form_valid(form)


class PasswordChangeDoneView(PasswordContextMixin, TemplateView):
    template_name = 'registration/password_change_done.html'
    title = _('Password change successful')

    @method_decorator(login_required)
    def dispatch(self, *args, **kwargs):
        return super().dispatch(*args, **kwargs)


def dashboard(request, id):
    user = User.objects.get(pk = id)
    account = Account.objects.get(username = id)
    userdetail = UserDetail.objects.get(accountid = account.pk)

    if request.method == 'POST': 
        avatar = request.FILES.get('avatar')
        
        account.avatar = tokenFile(avatar,'media/users', user.username ,1)
        account.save()

    context = {
        'user': user,
        'account': account,
        'userdetail': userdetail,
    }
    return render(request, 'homepage/dashboard.html', context)

# lessons
def lesson(request):
    topiclessons = {}
    for i in TopicLesson.objects.all():
        topiclessons[i] = Lesson.objects.filter(topiclessonid=i)
    context = {
        'topiclessons': topiclessons,
    }

    # dang nhap -> ktra tracking theo user, lesson -> dung filter trackingactivity

    if request.user.is_authenticated: 
        current_user = request.user
        account = Account.objects.get(username = current_user.id)

        # tracking theo lesson -> thanh tien do lesson hoac mo khoa lesson on tap trong chu de do
        # tracking theo chu de -> mo khoa chu de tiep theo

        for topic in topiclessons:
            # for lesson in lessons:
            for lesson in topiclessons[topic]: 
                activities = Activity.objects.filter(lessonid = lesson)
                tracking = TrackingActivity.objects.filter(accountid = account, lessonid = lesson)
                if len(tracking) != 0:
                    print(len(tracking)/len(activities)*100)
                    lesson.percent = len(tracking)/len(activities)*100
                else:
                    lesson.percent = 0
        # level_tracking = []
        # for i in tracking:
        #     level_tracking.append(i.levelid)
        # # check if level has tracking
        # for level in levels:
        #     if level in level_tracking:
        #         stars = tracking.get(levelid = level).stars
        #         new_link = level.image.split('.')
        #         level.image = new_link[0] + '_' + str(stars) + '.' + new_link[1]
    else:
        pass

    return render(request, 'homepage/lesson.html', context)

def lessondetail(request, id1, id2):
    topiclesson = TopicLesson.objects.get(pk=id1)
    lesson = Lesson.objects.get(pk=id2)
    activities = Activity.objects.filter(lessonid=id2).order_by('activityorder')
    context = {
        'topiclesson': topiclesson,
        'lesson': lesson,
        'activities': activities,
    }
    return render(request, 'homepage/lessondetail.html', context)

def activitydetail(request, id1, id2, id3):
    topiclesson = TopicLesson.objects.get(pk=id1)
    lesson = Lesson.objects.get(pk=id2)    
    activity = Activity.objects.get(activityid=id3)
    context = {
        'topiclesson': topiclesson,
        'lesson': lesson,
        'activity': activity,
    }
    return render(request, 'homepage/activitydetail.html', context)

# game practices
def practice(request):
    topicpractices = {}
    for i in TopicPractice.objects.all():
        topicpractices[i] = Game.objects.filter(topicpracticeid=i)
    context = {
        'topicpractices': topicpractices,
    }
    return render(request, 'homepage/practice.html', context)

def practicelevel(request, id):
    game = Game.objects.get(pk=id)
    levels = GameLevel.objects.filter(gameid=id)

    if request.user.is_authenticated: 
        current_user = request.user
        account = Account.objects.get(username = current_user.id)
        tracking = TrackingLevelGame.objects.filter(accountid = account, gameid = game)
        level_tracking = []
        for i in tracking:
            level_tracking.append(i.levelid)
        # check if level has tracking
        for level in levels:
            if level in level_tracking:
                stars = tracking.get(levelid = level).stars
                new_link = level.image.split('.')
                level.image = new_link[0] + '_' + str(stars) + '.' + new_link[1]
    else:
        pass

    context = {
        'game': game,
        'levels': levels,
    }
    return render(request, 'homepage/practicelevel.html', context)

def practicedetail(request, id1, id2):
    game = Game.objects.get(pk=id1)
    level = GameLevel.objects.get(pk=id2)
    hidemenu = True
    context = {
        'game': game,
        'level': level,
    }
    return render(request, 'homepage/practicedetail.html', context)

# test
def test(request):
    # timetest = TimeTest.objects.all()
    timetest1 = TimeTest.objects.filter(isenable = 1)[:3]
    timetest2 = TimeTest.objects.filter(isenable = 1)[3:]
    contenttest = ContentTest.objects.all()
    context = {
        'timetest1': timetest1,
        'timetest2': timetest2,
        'contenttest': contenttest,
    }
    return render(request, 'homepage/test.html', context)

def timetestdetail(request, id):
    test = TimeTest.objects.get(pk=id)
    context = {
        'test': test,
    }
    return render(request, 'homepage/testdetail.html', context)

def contenttestdetail(request, id):
    contenttest = ContentTest.objects.get(pk=id)
    context = {
        'test': test,
    }
    return render(request, 'homepage/testdetail.html', context)

def competition(request):
    competitions = Competition.objects.filter(isenable=1).order_by('createdate')
    context = {
        'competitions': competitions,
    }
    return render(request, 'homepage/competition.html', context)

def news(request):
    news = News.objects.all()
    if 'q' in request.GET:
        q=request.GET['q']
        posts=News.objects.filter(title__icontains=q)
    else:
        posts=News.objects.all().order_by("-createdate")
    # Pagintion
    paginator=Paginator(posts,3)
    page_number=request.GET.get('page')
    page_obj=paginator.get_page(page_number)
    
    context = {
       # 'blogcategorylist': blogcategorylist,
        'page_obj':page_obj,
        'news': news,        
    }
    return render(request, 'homepage/news.html', context)

   

def newsdetail(request, id):
    news = News.objects.get(pk=id)
    context = {
        'news': news
    }
    return render(request, 'homepage/newsdetail.html', context)

def document(request):
    documents = Document.objects.all()
    if 'q' in request.GET:
        q=request.GET['q']
        posts=Document.objects.filter(title__icontains=q)
    else:
        posts=Document.objects.all().order_by("-createdate")
    # Pagintion
    paginator=Paginator(posts,3)
    page_number=request.GET.get('page')
    page_obj=paginator.get_page(page_number)
    context = {
        'page_obj':page_obj,
        'documents': documents
    }
    return render(request, 'homepage/document.html', context)

def docdetail(request, id):
    document = Document.objects.get(pk=id)
    context = {
        'document': document
    }
    return render(request, 'homepage/docdetail.html', context)

def support(request):
    if 'q' in request.GET:
        q=request.GET['q']
        posts=News.objects.filter(metaKeywords__icontains=q)
    else:
        posts=News.objects.all().order_by("-createdate")
    # Pagintion
    paginator=Paginator(posts,3)
    page_number=request.GET.get('page')
    page_obj=paginator.get_page(page_number)
    context = {
        'page_obj':page_obj,
    }
    return render(request, 'homepage/support.html', context)

def faq(request):
    questions = FAQ.objects.all()
    context = {
        'questions':questions,
    }
    return render(request, 'homepage/faq.html', context)

def contact(request):
    # form = ContactForm()
    # if request.method == 'POST':
    #     form=ContactForm(request.POST)
    #     if form.is_valid():
    #         name = form.cleaned_data['name']
    #         email = form.cleaned_data['email']
    #         message = form.cleaned_data['messages']
    #         date = timezone.now()
    #         obj=Contact()
    #         obj.date=date
    #         obj.name=name
    #         obj.email=email
    #         obj.messages=message
    #         obj.save()
    #         contact ={'message': 'Cảm ơn phản hồi của bạn'}
    #         return render(request,'homepage/feedback.html',contact)
    #         #messages.success(request,"Cảm ơn phản hồi của bạn"
    # context={'form' :form}
    # return render(request,'homepage/contact.html',context)
    # if request.method == 'POST':
    #     # form = FormContact()
    #     message = 'Cảm ơn phản hồi của bạn'
    #     context = {
    #         'message': message,
    #     }
    #     return render(request,'homepage/support.html',context)
    return render(request,'homepage/contact.html')

def feedback(request):
    pass
    # return render(request,'homepage/feedback.html',contact)
