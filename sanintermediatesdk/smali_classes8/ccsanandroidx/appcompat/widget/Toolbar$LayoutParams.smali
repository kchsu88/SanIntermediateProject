.class public Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;
.super Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .line 2366
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 2367
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2356
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    .line 2349
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2357
    const v0, 0x800013

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2358
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .line 2361
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    .line 2349
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2362
    iput p3, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    .line 2363
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 2352
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 2349
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2353
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 2387
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2349
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2388
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 2380
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 2349
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2383
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->copyMarginsFromCompat(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2384
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;

    .line 2376
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 2349
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2377
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2370
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Lccsanandroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 2349
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2372
    iget v0, p1, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2373
    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 2391
    iget v0, p1, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    .line 2392
    iget v0, p1, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    .line 2393
    iget v0, p1, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    .line 2394
    iget v0, p1, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lccsanandroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    .line 2395
    return-void
.end method
