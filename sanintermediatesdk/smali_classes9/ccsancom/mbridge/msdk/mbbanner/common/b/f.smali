.class public Lccsancom/mbridge/msdk/mbbanner/common/b/f;
.super Ljava/lang/Object;
.source "DownloadImageListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-eqz p1, :cond_0

    .line 17
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/f;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    .line 19
    :cond_0
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/f;->c:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 30
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/f;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/f;->c:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 31
    return-void
.end method

.method public onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 24
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/f;->b:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/f;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2, v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 26
    return-void
.end method
