.class public Lccsancom/mbridge/msdk/widget/MBAdChoice;
.super Lccsancom/mbridge/msdk/widget/MBImageView;
.source "MBAdChoice.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-string v0, "MBAdChoice"

    sput-object v0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->b:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->c:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->e:Lccsanandroid/content/Context;

    .line 28
    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/MBAdChoice;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 19
    const-string p2, ""

    iput-object p2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->b:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->c:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->e:Lccsanandroid/content/Context;

    .line 34
    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/MBAdChoice;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 19
    const-string p2, ""

    iput-object p2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->b:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->c:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->e:Lccsanandroid/content/Context;

    .line 40
    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/MBAdChoice;->a()V

    .line 41
    return-void
.end method

.method private a()V
    .locals 1

    .line 44
    sget-object v0, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/MBAdChoice;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/MBAdChoice;->setClickable(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 3

    .line 89
    nop

    .line 1094
    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->e:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/t;->b(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 90
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCampaign(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 3

    .line 66
    instance-of v0, p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1049
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1050
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1051
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->b:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1052
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1054
    :goto_0
    if-nez p1, :cond_2

    .line 1055
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 1056
    if-eqz p1, :cond_1

    .line 1057
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->I()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->b:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1058
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->K()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->d:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1059
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->J()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move p1, v0

    .line 1061
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/MBAdChoice;->setImageUrl(Ljava/lang/String;)V

    .line 1062
    nop

    .line 66
    if-eqz p1, :cond_3

    .line 67
    nop

    .line 1073
    iget-object p1, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->e:Lccsanandroid/content/Context;

    if-eqz p1, :cond_3

    .line 1074
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/MBAdChoice;->b:Ljava/lang/String;

    new-instance v1, Lccsancom/mbridge/msdk/widget/MBAdChoice$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/widget/MBAdChoice$1;-><init>(Lccsancom/mbridge/msdk/widget/MBAdChoice;)V

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 70
    :cond_3
    return-void
.end method
