.class final Lccsancom/mbridge/msdk/mbnative/c/b$7;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbnative/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Lccsancom/mbridge/msdk/mbnative/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$7;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$7;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1114
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$7;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$7;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->i(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsanandroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$7;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$7;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->g(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/d/a;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/mbnative/e/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/mbnative/d/a;)V

    .line 1116
    :cond_0
    return-void
.end method
