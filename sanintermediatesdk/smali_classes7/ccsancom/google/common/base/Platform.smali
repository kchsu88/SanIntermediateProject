.class final Lccsancom/google/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/base/Platform$JdkPatternCompiler;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final patternCompiler:Lccsancom/google/common/base/PatternCompiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lccsancom/google/common/base/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/base/Platform;->logger:Ljava/util/logging/Logger;

    .line 34
    invoke-static {}, Lccsancom/google/common/base/Platform;->loadPatternCompiler()Lccsancom/google/common/base/PatternCompiler;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/base/Platform;->patternCompiler:Lccsancom/google/common/base/PatternCompiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compilePattern(Ljava/lang/String;)Lccsancom/google/common/base/CommonPattern;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lccsancom/google/common/base/Platform;->patternCompiler:Lccsancom/google/common/base/PatternCompiler;

    invoke-interface {v0, p0}, Lccsancom/google/common/base/PatternCompiler;->compile(Ljava/lang/String;)Lccsancom/google/common/base/CommonPattern;

    move-result-object v0

    return-object v0
.end method

.method static emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 66
    invoke-static {p0}, Lccsancom/google/common/base/Platform;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static formatCompact4Digits(D)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D

    .line 54
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%.4g"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getEnumIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lccsancom/google/common/base/Optional;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 49
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Enums;->getEnumConstants(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 50
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Ljava/lang/Enum<*>;>;"
    if-nez v0, :cond_0

    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static loadPatternCompiler()Lccsancom/google/common/base/PatternCompiler;
    .locals 2

    .line 84
    new-instance v0, Lccsancom/google/common/base/Platform$JdkPatternCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/base/Platform$JdkPatternCompiler;-><init>(Lccsancom/google/common/base/Platform$1;)V

    return-object v0
.end method

.method private static logPatternCompilerError(Ljava/util/ServiceConfigurationError;)V
    .locals 3
    .param p0, "e"    # Ljava/util/ServiceConfigurationError;

    .line 88
    sget-object v0, Lccsancom/google/common/base/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Error loading regex compiler, falling back to next option"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 62
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static patternCompilerIsPcreLike()Z
    .locals 1

    .line 75
    sget-object v0, Lccsancom/google/common/base/Platform;->patternCompiler:Lccsancom/google/common/base/PatternCompiler;

    invoke-interface {v0}, Lccsancom/google/common/base/PatternCompiler;->isPcreLike()Z

    move-result v0

    return v0
.end method

.method static precomputeCharMatcher(Lccsancom/google/common/base/CharMatcher;)Lccsancom/google/common/base/CharMatcher;
    .locals 1
    .param p0, "matcher"    # Lccsancom/google/common/base/CharMatcher;

    .line 45
    invoke-virtual {p0}, Lccsancom/google/common/base/CharMatcher;->precomputedInternal()Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method static stringIsNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 58
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static systemNanoTime()J
    .locals 2

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
