.class Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
.super Ljava/lang/Object;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CornerData"
.end annotation


# static fields
.field private static final noCorner:Lccsancom/google/android/material/shape/CornerSize;


# instance fields
.field bottomLeft:Lccsancom/google/android/material/shape/CornerSize;

.field bottomRight:Lccsancom/google/android/material/shape/CornerSize;

.field topLeft:Lccsancom/google/android/material/shape/CornerSize;

.field topRight:Lccsancom/google/android/material/shape/CornerSize;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 829
    new-instance v0, Lccsancom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    sput-object v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->noCorner:Lccsancom/google/android/material/shape/CornerSize;

    return-void
.end method

.method constructor <init>(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)V
    .locals 0
    .param p1, "topLeft"    # Lccsancom/google/android/material/shape/CornerSize;
    .param p2, "bottomLeft"    # Lccsancom/google/android/material/shape/CornerSize;
    .param p3, "topRight"    # Lccsancom/google/android/material/shape/CornerSize;
    .param p4, "bottomRight"    # Lccsancom/google/android/material/shape/CornerSize;

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:Lccsancom/google/android/material/shape/CornerSize;

    .line 839
    iput-object p3, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:Lccsancom/google/android/material/shape/CornerSize;

    .line 840
    iput-object p4, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:Lccsancom/google/android/material/shape/CornerSize;

    .line 841
    iput-object p2, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:Lccsancom/google/android/material/shape/CornerSize;

    .line 842
    return-void
.end method

.method public static bottom(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .locals 4
    .param p0, "orig"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 871
    new-instance v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    sget-object v1, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->noCorner:Lccsancom/google/android/material/shape/CornerSize;

    iget-object v2, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:Lccsancom/google/android/material/shape/CornerSize;

    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:Lccsancom/google/android/material/shape/CornerSize;

    invoke-direct {v0, v1, v2, v1, v3}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)V

    return-object v0
.end method

.method public static end(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Lccsanandroid/view/View;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .locals 1
    .param p0, "orig"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 851
    invoke-static {p1}, Lccsancom/google/android/material/internal/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->left(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->right(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static left(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .locals 4
    .param p0, "orig"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 856
    new-instance v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:Lccsancom/google/android/material/shape/CornerSize;

    iget-object v2, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:Lccsancom/google/android/material/shape/CornerSize;

    sget-object v3, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->noCorner:Lccsancom/google/android/material/shape/CornerSize;

    invoke-direct {v0, v1, v2, v3, v3}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)V

    return-object v0
.end method

.method public static right(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .locals 4
    .param p0, "orig"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 861
    new-instance v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    sget-object v1, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->noCorner:Lccsancom/google/android/material/shape/CornerSize;

    iget-object v2, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:Lccsancom/google/android/material/shape/CornerSize;

    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:Lccsancom/google/android/material/shape/CornerSize;

    invoke-direct {v0, v1, v1, v2, v3}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)V

    return-object v0
.end method

.method public static start(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Lccsanandroid/view/View;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .locals 1
    .param p0, "orig"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 846
    invoke-static {p1}, Lccsancom/google/android/material/internal/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->right(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->left(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static top(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .locals 4
    .param p0, "orig"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 866
    new-instance v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:Lccsancom/google/android/material/shape/CornerSize;

    sget-object v2, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->noCorner:Lccsancom/google/android/material/shape/CornerSize;

    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:Lccsancom/google/android/material/shape/CornerSize;

    invoke-direct {v0, v1, v2, v3, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)V

    return-object v0
.end method
