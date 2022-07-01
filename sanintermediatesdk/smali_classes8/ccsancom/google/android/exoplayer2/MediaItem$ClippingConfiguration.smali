.class public Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClippingConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "Lccsancom/google/android/exoplayer2/MediaItem$ClippingProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_END_POSITION_MS:I = 0x1

.field private static final FIELD_RELATIVE_TO_DEFAULT_POSITION:I = 0x3

.field private static final FIELD_RELATIVE_TO_LIVE_WINDOW:I = 0x2

.field private static final FIELD_STARTS_AT_KEY_FRAME:I = 0x4

.field private static final FIELD_START_POSITION_MS:I

.field public static final UNSET:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;


# instance fields
.field public final endPositionMs:J

.field public final relativeToDefaultPosition:Z

.field public final relativeToLiveWindow:Z

.field public final startPositionMs:J

.field public final startsAtKeyFrame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1418
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->build()Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->UNSET:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 1602
    sget-object v0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)V
    .locals 2
    .param p1, "builder"    # Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$3800(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 1532
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$3900(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 1533
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4000(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 1534
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4100(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 1535
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->access$4200(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    .line 1536
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;Lccsancom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/MediaItem$1;

    .line 1415
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;-><init>(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;)V

    return-void
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # I

    .line 1620
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/MediaItem$ClippingProperties;
    .locals 5
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;

    .line 1604
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>()V

    .line 1606
    const/4 v1, 0x0

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1605
    invoke-virtual {v0, v2, v3}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    .line 1609
    const/4 v2, 0x1

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    .line 1608
    const-wide/high16 v3, -0x8000000000000000L

    invoke-virtual {p0, v2, v3, v4}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1607
    invoke-virtual {v0, v2, v3}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    .line 1612
    const/4 v2, 0x2

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1611
    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToLiveWindow(Z)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    .line 1614
    const/4 v2, 0x3

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1613
    invoke-virtual {v0, v2}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setRelativeToDefaultPosition(Z)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    .line 1616
    const/4 v2, 0x4

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1615
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->setStartsAtKeyFrame(Z)Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    .line 1617
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lccsancom/google/android/exoplayer2/MediaItem$ClippingProperties;

    move-result-object v0

    .line 1604
    return-object v0
.end method


# virtual methods
.method public buildUpon()Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;
    .locals 2

    .line 1540
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration$Builder;-><init>(Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;Lccsancom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1545
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1546
    return v0

    .line 1548
    :cond_0
    instance-of v1, p1, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1549
    return v2

    .line 1552
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;

    .line 1554
    .local v1, "other":Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;
    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    iget-wide v5, v1, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    iget-wide v5, v1, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-boolean v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iget-boolean v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iget-boolean v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1563
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 1564
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    add-int/2addr v0, v2

    .line 1565
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    add-int/2addr v1, v2

    .line 1566
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    add-int/2addr v0, v2

    .line 1567
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    add-int/2addr v1, v2

    .line 1568
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBundle()Lccsanandroid/os/Bundle;
    .locals 4

    .line 1592
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 1593
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    const/4 v1, 0x0

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startPositionMs:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1594
    const/4 v1, 0x1

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->endPositionMs:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1595
    const/4 v1, 0x2

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1596
    const/4 v1, 0x3

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1597
    const/4 v1, 0x4

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1598
    return-object v0
.end method
