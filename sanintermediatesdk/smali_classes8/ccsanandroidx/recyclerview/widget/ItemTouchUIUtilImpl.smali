.class Lccsanandroidx/recyclerview/widget/ItemTouchUIUtilImpl;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Lccsanandroidx/recyclerview/widget/ItemTouchUIUtil;


# static fields
.field static final INSTANCE:Lccsanandroidx/recyclerview/widget/ItemTouchUIUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lccsanandroidx/recyclerview/widget/ItemTouchUIUtilImpl;

    invoke-direct {v0}, Lccsanandroidx/recyclerview/widget/ItemTouchUIUtilImpl;-><init>()V

    sput-object v0, Lccsanandroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Lccsanandroidx/recyclerview/widget/ItemTouchUIUtil;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMaxElevation(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroid/view/View;)F
    .locals 6
    .param p0, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p1, "itemView"    # Lccsanandroid/view/View;

    .line 53
    invoke-virtual {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 54
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 55
    .local v1, "max":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 56
    invoke-virtual {p0, v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 57
    .local v3, "child":Lccsanandroid/view/View;
    if-ne v3, p1, :cond_0

    .line 58
    goto :goto_1

    .line 60
    :cond_0
    invoke-static {v3}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v4

    .line 61
    .local v4, "elevation":F
    cmpl-float v5, v4, v1

    if-lez v5, :cond_1

    .line 62
    move v1, v4

    .line 55
    .end local v3    # "child":Lccsanandroid/view/View;
    .end local v4    # "elevation":F
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method public clearView(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 75
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 76
    sget v0, Lccsanandroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 78
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p1, v1}, Lccsanandroidx/core/view/ViewCompat;->setElevation(Lccsanandroid/view/View;F)V

    .line 80
    :cond_0
    sget v1, Lccsanandroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 83
    .end local v0    # "tag":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 84
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 85
    return-void
.end method

.method public onDraw(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroid/view/View;FFIZ)V
    .locals 3
    .param p1, "c"    # Lccsanandroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p3, "view"    # Lccsanandroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 36
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 37
    if-eqz p7, :cond_0

    .line 38
    sget v0, Lccsanandroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "originalElevation":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 40
    invoke-static {p3}, Lccsanandroidx/core/view/ViewCompat;->getElevation(Lccsanandroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 41
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Lccsanandroidx/recyclerview/widget/ItemTouchUIUtilImpl;->findMaxElevation(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroid/view/View;)F

    move-result v2

    add-float/2addr v2, v1

    .line 42
    .local v2, "newElevation":F
    invoke-static {p3, v2}, Lccsanandroidx/core/view/ViewCompat;->setElevation(Lccsanandroid/view/View;F)V

    .line 43
    sget v1, Lccsanandroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v1, v0}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    .end local v0    # "originalElevation":Ljava/lang/Object;
    .end local v2    # "newElevation":F
    :cond_0
    invoke-virtual {p3, p4}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 49
    invoke-virtual {p3, p5}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 50
    return-void
.end method

.method public onDrawOver(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroid/view/View;FFIZ)V
    .locals 0
    .param p1, "c"    # Lccsanandroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p3, "view"    # Lccsanandroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .line 71
    return-void
.end method

.method public onSelected(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 89
    return-void
.end method
