.class public final Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/Bundleable;


# static fields
.field public static final CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "Lccsancom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

.field private static final FIELD_TRACK_GROUPS:I


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:[Lccsancom/google/android/exoplayer2/source/TrackGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v1, v1, [Lccsancom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lccsancom/google/android/exoplayer2/source/TrackGroup;)V

    sput-object v0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    .line 126
    sget-object v0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/source/TrackGroupArray$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>([Lccsancom/google/android/exoplayer2/source/TrackGroup;)V
    .locals 1
    .param p1, "trackGroups"    # [Lccsancom/google/android/exoplayer2/source/TrackGroup;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lccsancom/google/android/exoplayer2/source/TrackGroup;

    .line 49
    array-length v0, p1

    iput v0, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 50
    return-void
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # I

    .line 137
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 4
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;

    .line 128
    sget-object v0, Lccsancom/google/android/exoplayer2/source/TrackGroup;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    .line 131
    const/4 v1, 0x0

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 132
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 129
    invoke-static {v0, v2, v3}, Lccsancom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lccsancom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "trackGroups":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/source/TrackGroup;>;"
    new-instance v2, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    new-array v1, v1, [Lccsancom/google/android/exoplayer2/source/TrackGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lccsancom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v2, v1}, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lccsancom/google/android/exoplayer2/source/TrackGroup;)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    .line 102
    .local v2, "other":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    iget v3, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    iget v4, v2, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lccsancom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, v2, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lccsancom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 99
    .end local v2    # "other":Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    :cond_3
    :goto_1
    return v1
.end method

.method public get(I)Lccsancom/google/android/exoplayer2/source/TrackGroup;
    .locals 1
    .param p1, "index"    # I

    .line 59
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lccsancom/google/android/exoplayer2/source/TrackGroup;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 87
    iget v0, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lccsancom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    .line 90
    :cond_0
    iget v0, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public indexOf(Lccsancom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 2
    .param p1, "group"    # Lccsancom/google/android/exoplayer2/source/TrackGroup;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lccsancom/google/android/exoplayer2/source/TrackGroup;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 74
    return v0

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 82
    iget v0, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toBundle()Lccsanandroid/os/Bundle;
    .locals 3

    .line 118
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    nop

    .line 120
    const/4 v1, 0x0

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lccsancom/google/android/exoplayer2/source/TrackGroup;

    .line 121
    invoke-static {v2}, Lccsancom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 122
    return-object v0
.end method
