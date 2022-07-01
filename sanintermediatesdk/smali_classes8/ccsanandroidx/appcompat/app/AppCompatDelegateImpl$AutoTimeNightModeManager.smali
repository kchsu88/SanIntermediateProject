.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoTimeNightModeManager"
.end annotation


# instance fields
.field private final mTwilightManager:Lccsanandroidx/appcompat/app/TwilightManager;

.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;Lccsanandroidx/appcompat/app/TwilightManager;)V
    .locals 0
    .param p2, "twilightManager"    # Lccsanandroidx/appcompat/app/TwilightManager;

    .line 3242
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 3243
    iput-object p2, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Lccsanandroidx/appcompat/app/TwilightManager;

    .line 3244
    return-void
.end method


# virtual methods
.method createIntentFilterForBroadcastReceiver()Lccsanandroid/content/IntentFilter;
    .locals 2

    .line 3259
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 3260
    .local v0, "filter":Lccsanandroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3261
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3262
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3263
    return-object v0
.end method

.method public getApplyableNightMode()I
    .locals 1

    .line 3249
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Lccsanandroidx/appcompat/app/TwilightManager;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/TwilightManager;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public onChange()V
    .locals 1

    .line 3254
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    .line 3255
    return-void
.end method
