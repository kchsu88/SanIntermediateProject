.class public final Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;
.super Ljava/lang/Object;
.source "ExposeMonitor.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/dynview/endcard/a/b;

.field private b:Z

.field private c:Lccsanandroidx/recyclerview/widget/RecyclerView;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->d:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->e:Ljava/util/List;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->b:Z

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 199
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->c:Lccsanandroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->removeAllViews()V

    .line 201
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->c:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 203
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->a:Lccsancom/mbridge/msdk/video/dynview/endcard/a/b;

    if-eqz v0, :cond_2

    .line 207
    iput-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->a:Lccsancom/mbridge/msdk/video/dynview/endcard/a/b;

    .line 209
    :cond_2
    return-void
.end method

.method public final a(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsancom/mbridge/msdk/video/dynview/endcard/a/b;)V
    .locals 0

    .line 43
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->a:Lccsancom/mbridge/msdk/video/dynview/endcard/a/b;

    .line 44
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->c:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 45
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;->c:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a$1;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/video/dynview/endcard/a/a$1;-><init>(Lccsancom/mbridge/msdk/video/dynview/endcard/a/a;)V

    invoke-virtual {p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lccsanandroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 71
    return-void

    .line 46
    :cond_1
    :goto_0
    return-void
.end method
