.class final Lccsancom/mbridge/msdk/videocommon/download/g$2;
.super Lccsancom/mbridge/msdk/foundation/same/e/a;
.source "H5DownLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/videocommon/download/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

.field final synthetic f:Lccsancom/mbridge/msdk/videocommon/download/g;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/g;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->f:Lccsancom/mbridge/msdk/videocommon/download/g;

    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 221
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->f:Lccsancom/mbridge/msdk/videocommon/download/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/g;->a(Lccsancom/mbridge/msdk/videocommon/download/g;)Lccsancom/mbridge/msdk/videocommon/download/h;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->f:Lccsancom/mbridge/msdk/videocommon/download/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Lccsancom/mbridge/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->e:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    if-eqz v0, :cond_1

    .line 224
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$2;->a:Ljava/lang/String;

    new-instance v1, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/videocommon/download/g$2$1;-><init>(Lccsancom/mbridge/msdk/videocommon/download/g$2;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/download/e;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$c;Z)V

    .line 276
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 281
    return-void
.end method