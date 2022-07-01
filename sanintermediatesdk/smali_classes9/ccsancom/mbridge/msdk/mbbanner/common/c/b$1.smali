.class final Lccsancom/mbridge/msdk/mbbanner/common/c/b$1;
.super Ljava/util/TimerTask;
.source "BannerLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$1;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 123
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$1;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$1;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Z)Z

    .line 125
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$1;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$1;->a:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v4, v3}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 127
    :cond_0
    return-void
.end method
