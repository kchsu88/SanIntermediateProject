.class public Lccsancom/vungle/warren/utility/AppSession;
.super Ljava/lang/Object;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/utility/AppSession$SessionCallback;
    }
.end annotation


# instance fields
.field appLifeCycleCallback:Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

.field private sessionCallback:Lccsancom/vungle/warren/utility/AppSession$SessionCallback;

.field private sessionData:Lccsancom/vungle/warren/SessionData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lccsancom/vungle/warren/utility/AppSession$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/utility/AppSession$1;-><init>(Lccsancom/vungle/warren/utility/AppSession;)V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/AppSession;->appLifeCycleCallback:Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/utility/AppSession;)Lccsancom/vungle/warren/SessionData;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/AppSession;

    .line 8
    iget-object v0, p0, Lccsancom/vungle/warren/utility/AppSession;->sessionData:Lccsancom/vungle/warren/SessionData;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/utility/AppSession;)Lccsancom/vungle/warren/utility/AppSession$SessionCallback;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/AppSession;

    .line 8
    iget-object v0, p0, Lccsancom/vungle/warren/utility/AppSession;->sessionCallback:Lccsancom/vungle/warren/utility/AppSession$SessionCallback;

    return-object v0
.end method


# virtual methods
.method public observe()V
    .locals 2

    .line 58
    invoke-static {}, Lccsancom/vungle/warren/utility/ActivityManager;->getInstance()Lccsancom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/utility/AppSession;->appLifeCycleCallback:Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/utility/ActivityManager;->addListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 59
    return-void
.end method

.method public setSessionCallback(Lccsancom/vungle/warren/utility/AppSession$SessionCallback;)Lccsancom/vungle/warren/utility/AppSession;
    .locals 0
    .param p1, "sessionCallback"    # Lccsancom/vungle/warren/utility/AppSession$SessionCallback;

    .line 24
    iput-object p1, p0, Lccsancom/vungle/warren/utility/AppSession;->sessionCallback:Lccsancom/vungle/warren/utility/AppSession$SessionCallback;

    .line 25
    return-object p0
.end method

.method public setSessionData(Lccsancom/vungle/warren/SessionData;)Lccsancom/vungle/warren/utility/AppSession;
    .locals 0
    .param p1, "sessionData"    # Lccsancom/vungle/warren/SessionData;

    .line 19
    iput-object p1, p0, Lccsancom/vungle/warren/utility/AppSession;->sessionData:Lccsancom/vungle/warren/SessionData;

    .line 20
    return-object p0
.end method
