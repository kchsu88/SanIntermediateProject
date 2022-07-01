.class public final Lccsancom/mbridge/msdk/videocommon/download/f;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/videocommon/download/f$a;
    }
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/same/e/b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/e/b;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/e/b;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/f;->a:Lccsancom/mbridge/msdk/foundation/same/e/b;

    .line 14
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/f$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lccsancom/mbridge/msdk/videocommon/download/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/e/a;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/f;->a:Lccsancom/mbridge/msdk/foundation/same/e/b;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/e/b;->a(Lccsancom/mbridge/msdk/foundation/same/e/a;)V

    .line 30
    :cond_0
    return-void
.end method
