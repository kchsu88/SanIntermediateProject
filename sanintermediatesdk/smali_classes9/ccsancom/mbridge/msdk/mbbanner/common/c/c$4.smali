.class final Lccsancom/mbridge/msdk/mbbanner/common/c/c$4;
.super Lccsancom/mbridge/msdk/foundation/same/e/a;
.source "BannerShowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    const-string v1, "banner render failed because render is timeout"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final b()V
    .locals 0

    .line 105
    return-void
.end method
