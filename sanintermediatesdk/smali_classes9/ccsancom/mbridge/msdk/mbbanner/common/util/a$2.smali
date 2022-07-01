.class final Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;
.super Ljava/lang/Object;
.source "BannerDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lccsancom/mbridge/msdk/mbbanner/common/util/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/util/a;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;->d:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 41
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;->d:Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    invoke-static {v3}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/util/a;)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbbanner/common/b/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    :cond_0
    return-void
.end method
