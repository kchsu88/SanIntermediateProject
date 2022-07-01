.class public final Lccsankotlin/text/MatchResult$DefaultImpls;
.super Ljava/lang/Object;
.source "MatchResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/text/MatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static getDestructured(Lccsankotlin/text/MatchResult;)Lccsankotlin/text/MatchResult$Destructured;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/text/MatchResult;

    .line 79
    new-instance v0, Lccsankotlin/text/MatchResult$Destructured;

    invoke-direct {v0, p0}, Lccsankotlin/text/MatchResult$Destructured;-><init>(Lccsankotlin/text/MatchResult;)V

    return-object v0
.end method
