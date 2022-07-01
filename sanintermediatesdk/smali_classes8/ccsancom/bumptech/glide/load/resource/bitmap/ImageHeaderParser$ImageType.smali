.class public final enum Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
.super Ljava/lang/Enum;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum GIF:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum JPEG:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum PNG:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum PNG_A:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum UNKNOWN:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;


# instance fields
.field private final hasAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v1, "GIF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 30
    new-instance v1, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v4, "JPEG"

    invoke-direct {v1, v4, v3, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 32
    new-instance v4, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v5, "PNG_A"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 34
    new-instance v5, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v7, "PNG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 36
    new-instance v7, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 26
    const/4 v9, 0x5

    new-array v9, v9, [Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->$VALUES:[Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "hasAlpha"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-boolean p3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha:Z

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0
.end method

.method public static values()[Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 1

    .line 26
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->$VALUES:[Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-virtual {v0}, [Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0
.end method


# virtual methods
.method public hasAlpha()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha:Z

    return v0
.end method
