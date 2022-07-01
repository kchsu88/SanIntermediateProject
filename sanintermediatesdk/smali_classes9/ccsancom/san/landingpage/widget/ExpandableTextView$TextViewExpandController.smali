.class Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;
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
    name = "TextViewExpandController"
.end annotation


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field private final mCollapseText:Ljava/lang/String;

.field private final mExpandText:Ljava/lang/String;

.field private mTextView:Lccsanandroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->removeDownloadListener:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->mExpandText:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->mCollapseText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeState(Z)V
    .locals 6
    .param p1, "collapsed"    # Z

    .line 1
    .end local p1    # "collapsed":Z
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x3b

    xor-int/lit8 v0, v0, 0x3b

    or-int/2addr v0, v1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->mTextView:Lccsanandroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    goto :goto_0

    :cond_1
    const/16 p1, 0x24

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->mCollapseText:Ljava/lang/String;

    goto :goto_3

    :pswitch_0
    xor-int/lit8 p1, v0, 0x17

    and-int/lit8 v0, v0, 0x17

    or-int/2addr v0, p1

    shl-int/2addr v0, v3

    neg-int p1, p1

    and-int v4, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v4, p1

    rem-int/lit16 p1, v4, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    const/16 p1, 0x32

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->mExpandText:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->mExpandText:Ljava/lang/String;

    goto :goto_4

    :goto_2
    const/16 v0, 0xf

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    xor-int/lit8 v4, v0, 0x77

    and-int/lit8 v0, v0, 0x77

    or-int/2addr v0, v4

    shl-int/2addr v0, v3

    neg-int v4, v4

    and-int v5, v0, v4

    or-int/2addr v0, v4

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    :cond_3
    :goto_4
    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->removeDownloadListener:I

    xor-int/lit8 v0, p1, 0x59

    and-int/lit8 p1, p1, 0x59

    shl-int/2addr p1, v3

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    :cond_4
    packed-switch v3, :pswitch_data_2

    return-void

    :pswitch_2
    const/16 p1, 0x48

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public setView(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "toggleView"    # Lccsanandroid/view/View;

    .line 1
    .end local p1    # "toggleView":Lccsanandroid/view/View;
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x53

    xor-int/lit8 v0, v0, 0x53

    or-int/2addr v0, v1

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    :cond_0
    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->mTextView:Lccsanandroid/widget/TextView;

    and-int/lit8 p1, v0, 0x54

    or-int/lit8 v0, v0, 0x54

    add-int/2addr p1, v0

    and-int/lit8 v0, p1, -0x1

    or-int/lit8 p1, p1, -0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/ExpandableTextView$TextViewExpandController;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
