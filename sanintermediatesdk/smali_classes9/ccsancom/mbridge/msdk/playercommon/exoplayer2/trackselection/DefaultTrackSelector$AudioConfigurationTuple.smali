.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioConfigurationTuple"
.end annotation


# instance fields
.field public final channelCount:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleRate:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 2106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2107
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    .line 2108
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    .line 2109
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    .line 2110
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 2114
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2115
    return v0

    .line 2117
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2120
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .line 2121
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    .line 2122
    invoke-static {v2, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2121
    :goto_0
    return v0

    .line 2118
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 2127
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    .line 2128
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    add-int/2addr v0, v1

    .line 2129
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 2130
    return v0
.end method
