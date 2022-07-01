.class Lccsancom/san/landingpage/widget/ExpandableTextView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/ExpandableTextView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$2;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$2;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$2;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lccsancom/san/landingpage/widget/ExpandableTextView$2;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x67

    xor-int/lit8 v0, v0, 0x67

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/ExpandableTextView$2;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$2;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$2;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    iget-object v2, v2, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-virtual {v2}, Lccsanandroid/widget/TextView;->getHeight()I

    move-result v2

    neg-int v2, v2

    and-int/lit8 v3, v2, 0x0

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, -0x1

    or-int/2addr v2, v3

    neg-int v2, v2

    xor-int v3, v1, v2

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-static {v0, v3}, Lccsancom/san/landingpage/widget/ExpandableTextView;->access$502(Lccsancom/san/landingpage/widget/ExpandableTextView;I)I

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$2;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lccsancom/san/landingpage/widget/ExpandableTextView$2;->this$0:Lccsancom/san/landingpage/widget/ExpandableTextView;

    iget-object v2, v2, Lccsancom/san/landingpage/widget/ExpandableTextView;->mTv:Lccsanandroid/widget/TextView;

    invoke-virtual {v2}, Lccsanandroid/widget/TextView;->getHeight()I

    move-result v2

    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v1

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v4, v2

    or-int/2addr v3, v4

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    goto :goto_1

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method
