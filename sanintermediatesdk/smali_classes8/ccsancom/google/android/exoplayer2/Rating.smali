.class public abstract Lccsancom/google/android/exoplayer2/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/Bundleable;


# static fields
.field public static final CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "Lccsancom/google/android/exoplayer2/Rating;",
            ">;"
        }
    .end annotation
.end field

.field static final FIELD_RATING_TYPE:I = 0x0

.field static final RATING_TYPE_DEFAULT:I = -0x1

.field static final RATING_TYPE_HEART:I = 0x0

.field static final RATING_TYPE_PERCENTAGE:I = 0x1

.field static final RATING_TYPE_STAR:I = 0x2

.field static final RATING_TYPE_THUMB:I = 0x3

.field public static final RATING_UNSET:F = -1.0f


# direct methods
.method public static synthetic $r8$lambda$S87uZHR0r4DpwOSwqteylD8fJ5w(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Rating;
    .locals 0

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/Rating;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Rating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-object v0, Lccsancom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/Rating$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/Rating;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Rating;
    .locals 4
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;

    .line 70
    nop

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/Rating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, "ratingType":I
    packed-switch v0, :pswitch_data_0

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Encountered unknown rating type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :pswitch_0
    sget-object v1, Lccsancom/google/android/exoplayer2/ThumbRating;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v1, p0}, Lccsancom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/Rating;

    return-object v1

    .line 78
    :pswitch_1
    sget-object v1, Lccsancom/google/android/exoplayer2/StarRating;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v1, p0}, Lccsancom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/Rating;

    return-object v1

    .line 76
    :pswitch_2
    sget-object v1, Lccsancom/google/android/exoplayer2/PercentageRating;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v1, p0}, Lccsancom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/Rating;

    return-object v1

    .line 74
    :pswitch_3
    sget-object v1, Lccsancom/google/android/exoplayer2/HeartRating;->CREATOR:Lccsancom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v1, p0}, Lccsancom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/Rating;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # I

    .line 87
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract isRated()Z
.end method
