.class public final Lccsancom/google/android/exoplayer2/ThumbRating;
.super Lccsancom/google/android/exoplayer2/Rating;
.source "ThumbRating.java"


# static fields
.field public static final CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "Lccsancom/google/android/exoplayer2/ThumbRating;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_IS_THUMBS_UP:I = 0x2

.field private static final FIELD_RATED:I = 0x1

.field private static final TYPE:I = 0x3


# instance fields
.field private final isThumbsUp:Z

.field private final rated:Z


# direct methods
.method public static synthetic $r8$lambda$AKC_JpI1ZPlm6EFzvYW84DJrS_k(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/ThumbRating;
    .locals 0

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/ThumbRating;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/ThumbRating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 96
    sget-object v0, Lccsancom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/ThumbRating$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/ThumbRating;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/Rating;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->rated:Z

    .line 37
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isThumbsUp"    # Z

    .line 45
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/Rating;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->rated:Z

    .line 47
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    .line 48
    return-void
.end method

.method private static fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/ThumbRating;
    .locals 4
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;

    .line 99
    nop

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 99
    :goto_0
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 102
    invoke-static {v2}, Lccsancom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    .local v1, "rated":Z
    if-eqz v1, :cond_1

    .line 104
    new-instance v2, Lccsancom/google/android/exoplayer2/ThumbRating;

    const/4 v3, 0x2

    .line 105
    invoke-static {v3}, Lccsancom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {v2, v0}, Lccsancom/google/android/exoplayer2/ThumbRating;-><init>(Z)V

    goto :goto_1

    .line 106
    :cond_1
    new-instance v2, Lccsancom/google/android/exoplayer2/ThumbRating;

    invoke-direct {v2}, Lccsancom/google/android/exoplayer2/ThumbRating;-><init>()V

    .line 103
    :goto_1
    return-object v2
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # I

    .line 110
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 67
    instance-of v0, p1, Lccsancom/google/android/exoplayer2/ThumbRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/exoplayer2/ThumbRating;

    .line 71
    .local v0, "other":Lccsancom/google/android/exoplayer2/ThumbRating;
    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    iget-boolean v3, v0, Lccsancom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->rated:Z

    iget-boolean v3, v0, Lccsancom/google/android/exoplayer2/ThumbRating;->rated:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->rated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lccsancom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRated()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->rated:Z

    return v0
.end method

.method public isThumbsUp()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    return v0
.end method

.method public toBundle()Lccsanandroid/os/Bundle;
    .locals 3

    .line 88
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    const/4 v1, 0x0

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const/4 v1, 0x1

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->rated:Z

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    const/4 v1, 0x2

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/ThumbRating;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/ThumbRating;->isThumbsUp:Z

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    return-object v0
.end method
