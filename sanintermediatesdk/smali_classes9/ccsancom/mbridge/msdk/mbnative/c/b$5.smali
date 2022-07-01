.class final Lccsancom/mbridge/msdk/mbnative/c/b$5;
.super Lccsancom/mbridge/msdk/widget/a;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;)V
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

    .line 980
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$5;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccsanandroid/view/View;)V
    .locals 2

    .line 984
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$5;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->f(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/click/a;

    const/4 p1, 0x0

    sput-boolean p1, Lccsancom/mbridge/msdk/click/a;->a:Z

    .line 985
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$5;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->f(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/click/a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$5;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->g(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsancom/mbridge/msdk/mbnative/d/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    .line 986
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$5;->b:Lccsancom/mbridge/msdk/mbnative/c/b;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$5;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 987
    return-void
.end method
