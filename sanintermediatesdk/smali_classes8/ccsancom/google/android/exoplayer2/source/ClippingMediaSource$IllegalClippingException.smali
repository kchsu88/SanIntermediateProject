.class public final Lccsancom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
.super Ljava/io/IOException;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalClippingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException$Reason;
    }
.end annotation


# static fields
.field public static final REASON_INVALID_PERIOD_COUNT:I = 0x0

.field public static final REASON_NOT_SEEKABLE_TO_START:I = 0x1

.field public static final REASON_START_EXCEEDS_END:I = 0x2


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 65
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;->getReasonDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Illegal clipping: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    iput p1, p0, Lccsancom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;->reason:I

    .line 67
    return-void
.end method

.method private static getReasonDescription(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 78
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 76
    :pswitch_0
    const-string/jumbo v0, "start exceeds end"

    return-object v0

    .line 74
    :pswitch_1
    const-string v0, "not seekable to start"

    return-object v0

    .line 72
    :pswitch_2
    const-string v0, "invalid period count"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
