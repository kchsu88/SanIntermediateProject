.class public abstract Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/base/IAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdLoadInnerListener"
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->getDownloadingList:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAdLoadError(Lccsancom/san/ads/AdError;)V
.end method

.method public onAdLoadError(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V
    .locals 1
    .param p1, "adInfo"    # Lccsancom/san/ads/AdInfo;
    .param p2, "adError"    # Lccsancom/san/ads/AdError;

    .line 1
    .end local p1    # "adInfo":Lccsancom/san/ads/AdInfo;
    .end local p2    # "adError":Lccsancom/san/ads/AdError;
    sget p1, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x16

    goto :goto_2

    :cond_1
    const/16 p1, 0xa

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch
.end method

.method public onAdLoaded(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/AdWrapper;)V
    .locals 1
    .param p1, "adInfo"    # Lccsancom/san/ads/AdInfo;
    .param p2, "adWrapper"    # Lccsancom/san/ads/base/AdWrapper;

    .line 1
    .end local p1    # "adInfo":Lccsancom/san/ads/AdInfo;
    .end local p2    # "adWrapper":Lccsancom/san/ads/base/AdWrapper;
    sget p1, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x42

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    :cond_0
    invoke-virtual {p0, p2}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    sget p1, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x16

    add-int/lit8 p1, p1, -0x1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public abstract onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V
.end method
