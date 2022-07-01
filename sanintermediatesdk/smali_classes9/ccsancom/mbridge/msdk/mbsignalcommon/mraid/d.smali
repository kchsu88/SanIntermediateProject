.class public final Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;
.super Ljava/lang/Object;
.source "MraidVolumeChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$a;,
        Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$b;
    }
.end annotation


# static fields
.field public static a:D


# instance fields
.field private b:Lccsanandroid/content/Context;

.field private c:Lccsanandroid/media/AudioManager;

.field private d:Z

.field private e:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$b;

.field private f:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->a:D

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->d:Z

    .line 23
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->b:Lccsanandroid/content/Context;

    .line 24
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/media/AudioManager;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->c:Lccsanandroid/media/AudioManager;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()D
    .locals 5

    .line 28
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->c:Lccsanandroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lccsanandroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 29
    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->c:Lccsanandroid/media/AudioManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lccsanandroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 31
    :cond_1
    int-to-double v1, v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    sput-wide v1, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->a:D

    .line 33
    return-wide v1
.end method

.method public final a(Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$b;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->e:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$b;

    .line 42
    return-void
.end method

.method public final b()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$b;
    .locals 1

    .line 37
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->e:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$b;

    return-object v0
.end method

.method public final c()V
    .locals 3

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->b:Lccsanandroid/content/Context;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$a;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$a;-><init>(Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->f:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$a;

    .line 47
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 48
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->b:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->f:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$a;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->d:Z

    .line 52
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 55
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->b:Lccsanandroid/content/Context;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->f:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$a;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->e:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d$b;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/d;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_0
    :goto_0
    return-void
.end method
