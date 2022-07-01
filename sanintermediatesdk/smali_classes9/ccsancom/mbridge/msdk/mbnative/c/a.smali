.class public final Lccsancom/mbridge/msdk/mbnative/c/a;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/mbnative/c/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

.field private d:Lccsancom/mbridge/msdk/mbnative/c/a$a;

.field private e:Lccsanandroid/os/Handler;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lccsancom/mbridge/msdk/mbnative/c/a$a;Lccsanandroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsancom/mbridge/msdk/mbnative/c/a$a;",
            "Lccsanandroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 25
    const-string v0, "ImpressionTracker"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    .line 19
    const/4 v2, 0x0

    iput-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->c:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 26
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->d:Lccsancom/mbridge/msdk/mbnative/c/a$a;

    .line 27
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->e:Lccsanandroid/os/Handler;

    .line 28
    if-eqz p1, :cond_0

    .line 29
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 33
    :goto_0
    nop

    .line 1043
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/c/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    goto :goto_1

    .line 1044
    :catchall_0
    move-exception p1

    .line 1045
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1048
    :goto_1
    :try_start_1
    new-instance p1, Lccsancom/mbridge/msdk/mbnative/c/a$1;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/mbnative/c/a$1;-><init>(Lccsancom/mbridge/msdk/mbnative/c/a;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->c:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1057
    goto :goto_2

    .line 1055
    :catchall_1
    move-exception p1

    .line 1056
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_2
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/a;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/c/a;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 61
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->f:Z

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->e:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_1

    .line 65
    new-instance v1, Lccsancom/mbridge/msdk/mbnative/c/a$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/mbnative/c/a$2;-><init>(Lccsancom/mbridge/msdk/mbnative/c/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->f:Z

    .line 73
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbnative/c/a;)V
    .locals 12

    .line 14
    nop

    .line 1111
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->f:Z

    .line 1114
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1118
    iget-object v4, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    .line 1119
    nop

    .line 1139
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lccsanandroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 1142
    :cond_0
    new-instance v5, Lccsanandroid/graphics/Rect;

    invoke-direct {v5}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 1143
    invoke-virtual {v4, v5}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1144
    const/4 v5, 0x0

    goto :goto_3

    .line 1146
    :cond_1
    invoke-virtual {v5}, Lccsanandroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v5}, Lccsanandroid/graphics/Rect;->width()I

    move-result v5

    mul-int v6, v6, v5

    int-to-long v5, v6

    .line 1147
    invoke-virtual {v4}, Lccsanandroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Lccsanandroid/view/View;->getWidth()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v7, v7, v8

    int-to-long v7, v7

    .line 1148
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_2

    .line 1149
    const/4 v5, 0x0

    goto :goto_3

    .line 1151
    :cond_2
    long-to-double v5, v5

    long-to-double v7, v7

    const-wide v9, 0x3fd999999999999aL    # 0.4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    cmpl-double v9, v5, v7

    if-lez v9, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 1152
    :goto_1
    goto :goto_3

    .line 1140
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .line 1119
    :goto_3
    if-eqz v5, :cond_5

    .line 1120
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1122
    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1125
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->d:Lccsancom/mbridge/msdk/mbnative/c/a$a;

    if-eqz v0, :cond_7

    .line 1126
    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/c/a$a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1128
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1129
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbnative/c/a;->a()V

    .line 1131
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1132
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1135
    :cond_9
    goto :goto_5

    .line 1134
    :catch_0
    move-exception p0

    .line 14
    :goto_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 167
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->f:Z

    .line 168
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->a:Ljava/lang/ref/WeakReference;

    .line 170
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewTreeObserver;

    .line 171
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->c:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 173
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 177
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->d:Lccsancom/mbridge/msdk/mbnative/c/a$a;

    .line 178
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->c:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 179
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 182
    :cond_2
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    .line 186
    :goto_0
    return-void
.end method

.method public final a(Lccsanandroid/view/View;)V
    .locals 2

    .line 76
    nop

    .line 77
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/mbnative/c/e;->a(Lccsanandroid/content/Context;Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 82
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 83
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 84
    if-eqz v1, :cond_1

    .line 85
    nop

    .line 86
    invoke-virtual {v1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 85
    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/e;->a(Lccsanandroid/content/Context;Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v0

    .line 87
    if-nez v0, :cond_2

    .line 82
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 97
    return-void

    .line 99
    :cond_3
    invoke-virtual {v0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object p1

    .line 100
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    return-void

    .line 103
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->a:Ljava/lang/ref/WeakReference;

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/a;->c:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 105
    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 107
    :cond_5
    return-void
.end method
