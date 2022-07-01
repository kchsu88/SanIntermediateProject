.class Lccsancom/san/landingpage/widget/AdItemWeight$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/landingpage/widget/AdItemWeight$3;->render(Lccsanandroid/view/ViewGroup;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadingList:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic this$0:Lccsancom/san/landingpage/widget/AdItemWeight$3;

.field final synthetic val$item:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/landingpage/widget/AdItemWeight$3;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;->this$0:Lccsancom/san/landingpage/widget/AdItemWeight$3;

    iput-object p2, p0, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;->val$item:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 1
    .end local p1    # "v":Lccsanandroid/view/View;
    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;->getDownloadingList:I

    or-int/lit8 v0, p1, 0x74

    shl-int/lit8 v0, v0, 0x1

    xor-int/lit8 p1, p1, 0x74

    sub-int/2addr v0, p1

    xor-int/lit8 p1, v0, -0x1

    and-int/lit8 v0, v0, -0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    :cond_0
    iget-object p1, p0, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;->val$item:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Z

    sget p1, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;->unifiedDownload:I

    and-int/lit8 v0, p1, 0x67

    or-int/lit8 p1, p1, 0x67

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/AdItemWeight$3$1;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
