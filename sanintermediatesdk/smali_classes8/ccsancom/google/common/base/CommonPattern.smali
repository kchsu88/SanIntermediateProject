.class abstract Lccsancom/google/common/base/CommonPattern;
.super Ljava/lang/Object;
.source "CommonPattern.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lccsancom/google/common/base/CommonPattern;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lccsancom/google/common/base/Platform;->compilePattern(Ljava/lang/String;)Lccsancom/google/common/base/CommonPattern;

    move-result-object v0

    return-object v0
.end method

.method public static isPcreLike()Z
    .locals 1

    .line 41
    invoke-static {}, Lccsancom/google/common/base/Platform;->patternCompilerIsPcreLike()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract flags()I
.end method

.method public abstract matcher(Ljava/lang/CharSequence;)Lccsancom/google/common/base/CommonMatcher;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
