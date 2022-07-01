.class public final Lccsancom/mbridge/msdk/video/dynview/b$a;
.super Ljava/lang/Object;
.source "ViewOption.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/dynview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/video/dynview/b$a;)F
    .locals 0

    .line 71
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->e:F

    return p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/video/dynview/b$a;)F
    .locals 0

    .line 71
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->d:F

    return p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/video/dynview/b$a;)I
    .locals 0

    .line 71
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->f:I

    return p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/video/dynview/b$a;)I
    .locals 0

    .line 71
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->g:I

    return p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/video/dynview/b$a;)Lccsanandroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->a:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/video/dynview/b$a;)Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/video/dynview/b$a;)I
    .locals 0

    .line 71
    iget p0, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->c:I

    return p0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/video/dynview/b$a;)Lccsanandroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->h:Lccsanandroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/video/dynview/b$a;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->i:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(F)Lccsancom/mbridge/msdk/video/dynview/b$b;
    .locals 0

    .line 106
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->d:F

    .line 107
    return-object p0
.end method

.method public final a(I)Lccsancom/mbridge/msdk/video/dynview/b$b;
    .locals 0

    .line 100
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->c:I

    .line 101
    return-object p0
.end method

.method public final a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/video/dynview/b$b;
    .locals 0

    .line 88
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->a:Lccsanandroid/content/Context;

    .line 89
    return-object p0
.end method

.method public final a(Lccsanandroid/view/View;)Lccsancom/mbridge/msdk/video/dynview/b$b;
    .locals 0

    .line 130
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->h:Lccsanandroid/view/View;

    .line 131
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lccsancom/mbridge/msdk/video/dynview/b$b;
    .locals 0

    .line 94
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->b:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lccsancom/mbridge/msdk/video/dynview/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Lccsancom/mbridge/msdk/video/dynview/b$b;"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->i:Ljava/util/List;

    .line 138
    return-object p0
.end method

.method public final a()Lccsancom/mbridge/msdk/video/dynview/b;
    .locals 2

    .line 144
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/video/dynview/b;-><init>(Lccsancom/mbridge/msdk/video/dynview/b$a;Lccsancom/mbridge/msdk/video/dynview/b$1;)V

    return-object v0
.end method

.method public final b(F)Lccsancom/mbridge/msdk/video/dynview/b$b;
    .locals 0

    .line 112
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->e:F

    .line 113
    return-object p0
.end method

.method public final b(I)Lccsancom/mbridge/msdk/video/dynview/b$b;
    .locals 0

    .line 118
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->f:I

    .line 119
    return-object p0
.end method

.method public final c(I)Lccsancom/mbridge/msdk/video/dynview/b$b;
    .locals 0

    .line 124
    iput p1, p0, Lccsancom/mbridge/msdk/video/dynview/b$a;->g:I

    .line 125
    return-object p0
.end method
