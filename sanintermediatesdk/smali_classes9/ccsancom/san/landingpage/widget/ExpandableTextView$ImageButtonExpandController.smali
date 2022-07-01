.class Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/landingpage/widget/ExpandableTextView$ExpandIndicatorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/widget/ExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageButtonExpandController"
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I


# instance fields
.field private final mCollapseDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private final mExpandDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private mImageButton:Lccsanandroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->IncentiveDownloadUtils:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->mExpandDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 3
    iput-object p2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->mCollapseDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public changeState(Z)V
    .locals 7
    .param p1, "collapsed"    # Z

    .line 4
    .end local p1    # "collapsed":Z
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x47

    and-int/lit8 v2, v0, 0x47

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v4, v0, 0x47

    and-int/2addr v2, v4

    neg-int v2, v2

    or-int v4, v1, v2

    shl-int/2addr v4, v3

    xor-int/2addr v1, v2

    sub-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 1
    const/16 v1, 0xe

    goto :goto_0

    :cond_0
    const/16 v1, 0x5c

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->mExpandDrawable:Lccsanandroid/graphics/drawable/Drawable;

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->mExpandDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const/16 v5, 0x2f

    goto :goto_1

    :cond_1
    const/16 v5, 0x48

    :goto_1
    packed-switch v5, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/16 v5, 0x2f

    :try_start_0
    div-int/2addr v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    :goto_3
    packed-switch v5, :pswitch_data_2

    .line 4
    :pswitch_2
    and-int/lit8 v5, v0, 0x3

    xor-int/lit8 v6, v0, 0x3

    or-int/2addr v6, v5

    xor-int/lit8 v6, v6, -0x1

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 1
    :cond_3
    iget-object v5, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->mCollapseDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v5, :cond_6

    const/16 p1, 0x6f

    and-int/lit8 v1, v0, -0x70

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr p1, v5

    or-int/2addr p1, v1

    and-int/lit8 v1, v0, 0x6f

    shl-int/2addr v1, v3

    xor-int v5, p1, v1

    and-int/2addr p1, v1

    shl-int/2addr p1, v3

    add-int/2addr v5, p1

    rem-int/lit16 p1, v5, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 4
    :cond_4
    nop

    :goto_4
    nop

    .line 1
    or-int/lit8 p1, v0, 0x5

    shl-int/2addr p1, v3

    xor-int/lit8 v0, v0, 0x5

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    :cond_5
    packed-switch v3, :pswitch_data_3

    .line 4
    return-void

    .line 1
    :pswitch_3
    :try_start_1
    array-length p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 4
    :cond_6
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->mImageButton:Lccsanandroid/widget/ImageButton;

    if-eqz p1, :cond_7

    .line 1
    goto :goto_5

    :cond_7
    const/4 v4, 0x1

    :goto_5
    packed-switch v4, :pswitch_data_4

    move-object v1, v5

    goto :goto_8

    :pswitch_4
    xor-int/lit8 p1, v6, 0xd

    and-int/lit8 v4, v6, 0xd

    or-int/2addr p1, v4

    shl-int/2addr p1, v3

    and-int/lit8 v4, v6, -0xe

    xor-int/lit8 v5, v6, -0x1

    and-int/lit8 v5, v5, 0xd

    or-int/2addr v4, v5

    sub-int/2addr p1, v4

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_8

    const/16 p1, 0x40

    goto :goto_6

    :cond_8
    const/16 p1, 0x1c

    :goto_6
    packed-switch p1, :pswitch_data_5

    .line 4
    goto :goto_7

    .line 1
    :pswitch_5
    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    throw p1

    .line 4
    :goto_7
    nop

    :goto_8
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageButton;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->IncentiveDownloadUtils:I

    xor-int/lit8 v0, p1, 0x61

    and-int/lit8 p1, p1, 0x61

    shl-int/2addr p1, v3

    neg-int p1, p1

    neg-int p1, p1

    xor-int v1, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v3

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    .line 4
    return-void

    :catchall_2
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x40
        :pswitch_5
    .end packed-switch
.end method

.method public setView(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "toggleView"    # Lccsanandroid/view/View;

    .line 1
    .end local p1    # "toggleView":Lccsanandroid/view/View;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x3d

    and-int/lit8 v0, v0, 0x3d

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    check-cast p1, Lccsanandroid/widget/ImageButton;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->mImageButton:Lccsanandroid/widget/ImageButton;

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->IncentiveDownloadUtils:I

    xor-int/lit8 v0, p1, 0x1d

    and-int/lit8 p1, p1, 0x1d

    or-int/2addr p1, v0

    shl-int/2addr p1, v2

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$ImageButtonExpandController;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
