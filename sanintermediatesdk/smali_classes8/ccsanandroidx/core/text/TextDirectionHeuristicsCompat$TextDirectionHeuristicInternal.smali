.class Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
.super Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicInternal"
.end annotation


# instance fields
.field private final mDefaultIsRtl:Z


# direct methods
.method constructor <init>(Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V
    .locals 0
    .param p1, "algorithm"    # Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;
    .param p2, "defaultIsRtl"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "defaultIsRtl"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1}, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V

    .line 157
    iput-boolean p2, p0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    .line 158
    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lccsanandroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z

    return v0
.end method
