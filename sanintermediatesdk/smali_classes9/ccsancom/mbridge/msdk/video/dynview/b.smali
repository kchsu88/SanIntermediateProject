.class public final Lccsancom/mbridge/msdk/video/dynview/b;
.super Ljava/lang/Object;
.source "ViewOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/dynview/b$b;,
        Lccsancom/mbridge/msdk/video/dynview/b$a;
    }
.end annotation


# instance fields
.field private a:Lccsanandroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Lccsanandroid/view/View;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/video/dynview/b$a;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->a(Lccsancom/mbridge/msdk/video/dynview/b$a;)F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->e:F

    .line 61
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->b(Lccsancom/mbridge/msdk/video/dynview/b$a;)F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->d:F

    .line 62
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->c(Lccsancom/mbridge/msdk/video/dynview/b$a;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->f:I

    .line 63
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->d(Lccsancom/mbridge/msdk/video/dynview/b$a;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->g:I

    .line 64
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->e(Lccsancom/mbridge/msdk/video/dynview/b$a;)Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->a:Lccsanandroid/content/Context;

    .line 65
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->f(Lccsancom/mbridge/msdk/video/dynview/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->b:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->g(Lccsancom/mbridge/msdk/video/dynview/b$a;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->c:I

    .line 67
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->h(Lccsancom/mbridge/msdk/video/dynview/b$a;)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->h:Lccsanandroid/view/View;

    .line 68
    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/b$a;->i(Lccsancom/mbridge/msdk/video/dynview/b$a;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/b;->i:Ljava/util/List;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/video/dynview/b$a;Lccsancom/mbridge/msdk/video/dynview/b$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/dynview/b;-><init>(Lccsancom/mbridge/msdk/video/dynview/b$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lccsanandroid/content/Context;
    .locals 1

    .line 24
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->a:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .line 32
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->d:F

    return v0
.end method

.method public final d()F
    .locals 1

    .line 36
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->e:F

    return v0
.end method

.method public final e()I
    .locals 1

    .line 40
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->f:I

    return v0
.end method

.method public final f()Lccsanandroid/view/View;
    .locals 1

    .line 44
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->h:Lccsanandroid/view/View;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->i:Ljava/util/List;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 52
    iget v0, p0, Lccsancom/mbridge/msdk/video/dynview/b;->c:I

    return v0
.end method
