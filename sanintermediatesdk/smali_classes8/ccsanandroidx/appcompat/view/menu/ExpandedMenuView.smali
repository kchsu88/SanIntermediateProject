.class public final Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;
.super Lccsanandroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Lccsanandroidx/appcompat/view/menu/MenuView;
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mAnimations:I

.field private mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010129
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 53
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/ListView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0, p0}, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->setOnItemClickListener(Lccsanandroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    sget-object v0, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->TINT_ATTRS:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->setDivider(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    .line 97
    iget v0, p0, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 73
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 74
    return-void
.end method

.method public invokeItem(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    .line 86
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Lccsanandroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 78
    invoke-super {p0}, Lccsanandroid/widget/ListView;->onDetachedFromWindow()V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 82
    return-void
.end method

.method public onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Lccsanandroid/widget/AdapterView;
    .param p2, "v"    # Lccsanandroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 92
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Lccsanandroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/view/menu/ExpandedMenuView;->invokeItem(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 93
    return-void
.end method
