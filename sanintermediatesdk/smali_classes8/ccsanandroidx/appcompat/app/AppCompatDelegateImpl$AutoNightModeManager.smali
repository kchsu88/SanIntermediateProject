.class abstract Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mReceiver:Lccsanandroid/content/BroadcastReceiver;

.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3191
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 3223
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3225
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3229
    goto :goto_0

    .line 3226
    :catch_0
    move-exception v0

    .line 3230
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    .line 3232
    :cond_0
    return-void
.end method

.method abstract createIntentFilterForBroadcastReceiver()Lccsanandroid/content/IntentFilter;
.end method

.method abstract getApplyableNightMode()I
.end method

.method isListening()Z
    .locals 1

    .line 3235
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract onChange()V
.end method

.method setup()V
    .locals 3

    .line 3200
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    .line 3202
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->createIntentFilterForBroadcastReceiver()Lccsanandroid/content/IntentFilter;

    move-result-object v0

    .line 3203
    .local v0, "filter":Lccsanandroid/content/IntentFilter;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsanandroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3208
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 3209
    new-instance v1, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager$1;-><init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    .line 3216
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 3217
    return-void

    .line 3205
    :cond_2
    :goto_0
    return-void
.end method
