.class public final Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_OFFSET_MS:I = 0x2

.field private static final FIELD_MAX_PLAYBACK_SPEED:I = 0x4

.field private static final FIELD_MIN_OFFSET_MS:I = 0x1

.field private static final FIELD_MIN_PLAYBACK_SPEED:I = 0x3

.field private static final FIELD_TARGET_OFFSET_MS:I

.field public static final UNSET:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1092
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->build()Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->UNSET:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1212
    sget-object v0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0
    .param p1, "targetOffsetMs"    # J
    .param p3, "minOffsetMs"    # J
    .param p5, "maxOffsetMs"    # J
    .param p7, "minPlaybackSpeed"    # F
    .param p8, "maxPlaybackSpeed"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 1143
    iput-wide p3, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 1144
    iput-wide p5, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 1145
    iput p7, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 1146
    iput p8, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    .line 1147
    return-void
.end method

.method private constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)V
    .locals 9
    .param p1, "builder"    # Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    .line 1126
    nop

    .line 1127
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2100(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v1

    .line 1128
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2200(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v3

    .line 1129
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2300(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)J

    move-result-wide v5

    .line 1130
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2400(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F

    move-result v7

    .line 1131
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;->access$2500(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)F

    move-result v8

    .line 1126
    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    .line 1132
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;Lccsancom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/MediaItem$1;

    .line 999
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;)V

    return-void
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # I

    .line 1225
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .locals 12
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;

    .line 1214
    new-instance v9, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1216
    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    .line 1215
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1217
    const/4 v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1218
    const/4 v0, 0x2

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1220
    const/4 v0, 0x3

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    .line 1219
    const v1, -0x800001

    invoke-virtual {p0, v0, v1}, Lccsanandroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v10

    .line 1222
    const/4 v0, 0x4

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    .line 1221
    invoke-virtual {p0, v0, v1}, Lccsanandroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v11

    move-object v0, v9

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move v7, v10

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    .line 1214
    return-object v9
.end method


# virtual methods
.method public buildUpon()Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;
    .locals 2

    .line 1151
    new-instance v0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration$Builder;-><init>(Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lccsancom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1156
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1157
    return v0

    .line 1159
    :cond_0
    instance-of v1, p1, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1160
    return v2

    .line 1162
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1164
    .local v1, "other":Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iget-wide v5, v1, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iget-wide v5, v1, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iget-wide v5, v1, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iget v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iget v4, v1, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1173
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    .line 1174
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int/2addr v0, v4

    .line 1175
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    add-int/2addr v1, v2

    .line 1176
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 1177
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_1
    add-int/2addr v1, v3

    .line 1178
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toBundle()Lccsanandroid/os/Bundle;
    .locals 4

    .line 1202
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 1203
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    const/4 v1, 0x0

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1204
    const/4 v1, 0x1

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1205
    const/4 v1, 0x2

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1206
    const/4 v1, 0x3

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1207
    const/4 v1, 0x4

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lccsancom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1208
    return-object v0
.end method
