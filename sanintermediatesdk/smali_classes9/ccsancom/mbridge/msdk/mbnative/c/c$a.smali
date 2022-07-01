.class public final Lccsancom/mbridge/msdk/mbnative/c/c$a;
.super Lccsancom/mbridge/msdk/mbnative/f/a/b;
.source "NativePreloadController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbnative/c/c;

.field private b:I

.field private c:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field private m:Z

.field private n:Lccsancom/mbridge/msdk/a/a/a;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/c;I)V
    .locals 0

    .line 724
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    .line 725
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/f/a/b;-><init>()V

    .line 698
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->j:Ljava/util/List;

    .line 729
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->k:Z

    .line 733
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->m:Z

    .line 726
    iput p2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->b:I

    .line 727
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/c$a;I)I
    .locals 0

    .line 692
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->c:I

    return p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Ljava/lang/Runnable;
    .locals 0

    .line 692
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I
    .locals 0

    .line 692
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->i:I

    return p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I
    .locals 0

    .line 692
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->h:I

    return p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I
    .locals 0

    .line 692
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->g:I

    return p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I
    .locals 0

    .line 692
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->c:I

    return p0
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/mbnative/c/c$a;)I
    .locals 0

    .line 692
    iget p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->b:I

    return p0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Z
    .locals 0

    .line 692
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->k:Z

    return p0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Z
    .locals 0

    .line 692
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->m:Z

    return p0
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/mbnative/c/c$a;)Lccsancom/mbridge/msdk/a/a/a;
    .locals 0

    .line 692
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->n:Lccsancom/mbridge/msdk/a/a/a;

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 853
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/mbridge/msdk/mbnative/c/c$a$2;-><init>(Lccsancom/mbridge/msdk/mbnative/c/c$a;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 885
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/Thread;)V

    .line 886
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/a/a/a;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->n:Lccsancom/mbridge/msdk/a/a/a;

    .line 739
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->l:Ljava/lang/Runnable;

    .line 894
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 701
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->j:Ljava/util/List;

    .line 702
    return-void
.end method

.method public final a(Ljava/util/List;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;",
            ")V"
        }
    .end annotation

    .line 757
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Lccsancom/mbridge/msdk/mbnative/c/c;Z)Z

    .line 758
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->n:Lccsancom/mbridge/msdk/a/a/a;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ZLccsancom/mbridge/msdk/a/a/a;Ljava/lang/String;)V

    .line 759
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;

    invoke-direct {v0, p0, p2}, Lccsancom/mbridge/msdk/mbnative/c/c$a$1;-><init>(Lccsancom/mbridge/msdk/mbnative/c/c$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 848
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/Thread;)V

    .line 849
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 747
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->k:Z

    .line 748
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .line 898
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/c$a$3;-><init>(Lccsancom/mbridge/msdk/mbnative/c/c$a;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 935
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a:Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/Thread;)V

    .line 936
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 742
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->m:Z

    .line 743
    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 705
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->i:I

    .line 706
    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 709
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->g:I

    .line 710
    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 713
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->h:I

    .line 714
    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 721
    iput p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c$a;->c:I

    .line 722
    return-void
.end method
