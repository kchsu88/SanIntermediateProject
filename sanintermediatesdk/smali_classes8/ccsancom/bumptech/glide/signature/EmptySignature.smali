.class public final Lccsancom/bumptech/glide/signature/EmptySignature;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/Key;


# static fields
.field private static final EMPTY_KEY:Lccsancom/bumptech/glide/signature/EmptySignature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lccsancom/bumptech/glide/signature/EmptySignature;

    invoke-direct {v0}, Lccsancom/bumptech/glide/signature/EmptySignature;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/signature/EmptySignature;->EMPTY_KEY:Lccsancom/bumptech/glide/signature/EmptySignature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static obtain()Lccsancom/bumptech/glide/signature/EmptySignature;
    .locals 1

    .line 15
    sget-object v0, Lccsancom/bumptech/glide/signature/EmptySignature;->EMPTY_KEY:Lccsancom/bumptech/glide/signature/EmptySignature;

    return-object v0
.end method


# virtual methods
.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 25
    return-void
.end method
