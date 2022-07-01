.class final Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;
.super Lccsanandroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/landingpage/BaseLandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/Property<",
        "Lccsancom/san/landingpage/widget/AnimatedDoorLayout;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsanandroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x7e

    or-int/lit8 v0, v0, 0x7e

    add-int/2addr v1, v0

    xor-int/lit8 v0, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    check-cast p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

    invoke-virtual {p0, p1}, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->removeDownloadListener(Lccsancom/san/landingpage/widget/AnimatedDoorLayout;)Ljava/lang/Float;

    move-result-object p1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xe

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->getDownloadingList:I

    const/16 v1, 0x25

    xor-int/lit8 v3, v0, 0x25

    and-int/lit8 v4, v0, 0x25

    or-int/2addr v3, v4

    shl-int/lit8 v2, v3, 0x1

    and-int/lit8 v3, v0, -0x26

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    neg-int v0, v0

    and-int v1, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v0, 0x51

    goto :goto_1

    :cond_1
    const/16 v0, 0x54

    :goto_1
    packed-switch v0, :pswitch_data_1

    return-object p1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsancom/san/landingpage/widget/AnimatedDoorLayout;)Ljava/lang/Float;
    .locals 2

    .line 3
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {p1}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->getProgress()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x11

    and-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x15

    goto :goto_0

    :cond_1
    const/16 v0, 0x55

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p1

    :goto_1
    const/16 v0, 0x49

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsancom/san/landingpage/widget/AnimatedDoorLayout;Ljava/lang/Float;)V
    .locals 2

    .line 2
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.BaseLandingPage"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;->setProgress(F)V

    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->addDownloadListener:I

    xor-int/lit8 p2, p1, 0x51

    and-int/lit8 v0, p1, 0x51

    or-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x1

    and-int/lit8 v0, p1, -0x52

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x51

    or-int/2addr p1, v0

    neg-int p1, p1

    and-int v0, p2, p1

    or-int/2addr p1, p2

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 p1, 0x44

    goto :goto_0

    :cond_0
    const/16 p1, 0x50

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0xd

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x53

    or-int/lit8 v0, v0, 0x53

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    check-cast p1, Lccsancom/san/landingpage/widget/AnimatedDoorLayout;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->removeDownloadListener(Lccsancom/san/landingpage/widget/AnimatedDoorLayout;Ljava/lang/Float;)V

    sget p1, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x2a

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/BaseLandingPageActivity$getDownloadingRecordByUrl;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x18

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method
