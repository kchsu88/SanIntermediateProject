.class final enum Lccsancom/google/common/base/CaseFormat$5;
.super Lccsancom/google/common/base/CaseFormat;
.source "CaseFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/CaseFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILccsancom/google/common/base/CharMatcher;Ljava/lang/String;)V
    .locals 6
    .param p3, "wordBoundary"    # Lccsancom/google/common/base/CharMatcher;
    .param p4, "wordSeparator"    # Ljava/lang/String;

    .line 87
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILccsancom/google/common/base/CharMatcher;Ljava/lang/String;Lccsancom/google/common/base/CaseFormat$1;)V

    return-void
.end method


# virtual methods
.method convert(Lccsancom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Lccsancom/google/common/base/CaseFormat;
    .param p2, "s"    # Ljava/lang/String;

    .line 95
    sget-object v0, Lccsancom/google/common/base/CaseFormat$5;->LOWER_HYPHEN:Lccsancom/google/common/base/CaseFormat;

    if-ne p1, v0, :cond_0

    .line 96
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    sget-object v0, Lccsancom/google/common/base/CaseFormat$5;->LOWER_UNDERSCORE:Lccsancom/google/common/base/CaseFormat;

    if-ne p1, v0, :cond_1

    .line 99
    invoke-static {p2}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    invoke-super {p0, p1, p2}, Lccsancom/google/common/base/CaseFormat;->convert(Lccsancom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lccsancom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
