.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoBatteryNightModeManager;
.super Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoBatteryNightModeManager"
.end annotation


# instance fields
.field private final mPowerManager:Lccsanandroid/os/PowerManager;

.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;Lccsanandroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Lccsanandroid/content/Context;

    .line 3270
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoBatteryNightModeManager;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 3271
    invoke-virtual {p2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 3272
    const-string v0, "power"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/PowerManager;

    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoBatteryNightModeManager;->mPowerManager:Lccsanandroid/os/PowerManager;

    .line 3273
    return-void
.end method


# virtual methods
.method createIntentFilterForBroadcastReceiver()Lccsanandroid/content/IntentFilter;
    .locals 2

    .line 3291
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3292
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 3293
    .local v0, "filter":Lccsanandroid/content/IntentFilter;
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3294
    return-object v0

    .line 3296
    .end local v0    # "filter":Lccsanandroid/content/IntentFilter;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplyableNightMode()I
    .locals 3

    .line 3278
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 3279
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoBatteryNightModeManager;->mPowerManager:Lccsanandroid/os/PowerManager;

    invoke-virtual {v0}, Lccsanandroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    return v1

    .line 3281
    :cond_1
    return v1
.end method

.method public onChange()V
    .locals 1

    .line 3286
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$AutoBatteryNightModeManager;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    .line 3287
    return-void
.end method
