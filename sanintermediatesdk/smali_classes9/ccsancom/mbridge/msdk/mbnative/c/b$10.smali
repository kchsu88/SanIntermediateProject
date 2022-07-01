.class final Lccsancom/mbridge/msdk/mbnative/c/b$10;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

.field final synthetic c:I

.field final synthetic d:Lccsancom/mbridge/msdk/mbnative/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;I)V
    .locals 0

    .line 1628
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->a:Ljava/util/List;

    iput-object p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    iput p4, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1631
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1632
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1633
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/lang/String;)Ljava/lang/String;

    .line 1635
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->c(Lccsancom/mbridge/msdk/mbnative/c/b;Z)Z

    .line 1636
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->a:Ljava/util/List;

    iget v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->c:I

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdLoaded(Ljava/util/List;I)V

    .line 1637
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->i(Lccsancom/mbridge/msdk/mbnative/c/b;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->a:Ljava/util/List;

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$10;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-static {v2}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/mbnative/c/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/e/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1638
    return-void
.end method
