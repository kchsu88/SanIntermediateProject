.class public Lccsancom/mbridge/msdk/mbbanner/common/b/e;
.super Ljava/lang/Object;
.source "DownloadBannerUrlListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/g$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lccsancom/mbridge/msdk/mbbanner/common/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/e;->c:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    .line 16
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/e;->b:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 21
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/e;->c:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/e;->b:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 24
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 28
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/e;->c:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    if-eqz p2, :cond_0

    .line 29
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/e;->b:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 31
    :cond_0
    return-void
.end method
