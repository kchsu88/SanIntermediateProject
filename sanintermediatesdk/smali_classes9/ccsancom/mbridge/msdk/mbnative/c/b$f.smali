.class final Lccsancom/mbridge/msdk/mbnative/c/b$f;
.super Lccsancom/mbridge/msdk/foundation/same/e/a;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/mbridge/msdk/mbnative/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/mbnative/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsancom/mbridge/msdk/mbnative/c/b;",
            ")V"
        }
    .end annotation

    .line 1070
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/e/a;-><init>()V

    .line 1071
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1072
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->e:Ljava/lang/ref/WeakReference;

    .line 1073
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->f:Ljava/lang/ref/WeakReference;

    .line 1074
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->g:Ljava/lang/ref/WeakReference;

    .line 1075
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1090
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->f:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1092
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 1093
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1094
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/mbnative/c/b;

    .line 1096
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1097
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$f;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v2, v3, v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/view/View;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :cond_0
    goto :goto_0

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    invoke-static {}, Lccsancom/mbridge/msdk/mbnative/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1085
    return-void
.end method
