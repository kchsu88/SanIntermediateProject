.class final Lccsancom/mbridge/msdk/mbnative/c/b$9;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbnative/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

.field final synthetic d:Lccsancom/mbridge/msdk/mbnative/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 0

    .line 1595
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->a:Ljava/util/List;

    iput p3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->b:I

    iput-object p4, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->c:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1598
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 1599
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1600
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    iget v2, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->b:I

    iget-object v3, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->c:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    invoke-static {v1, v0, v2, v3}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;Ljava/util/List;ILccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V

    goto :goto_0

    .line 1602
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->d:Lccsancom/mbridge/msdk/mbnative/c/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/c/b$9;->c:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    const-string v2, "has no ads"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/mbnative/c/b;Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V

    .line 1604
    :goto_0
    return-void
.end method
