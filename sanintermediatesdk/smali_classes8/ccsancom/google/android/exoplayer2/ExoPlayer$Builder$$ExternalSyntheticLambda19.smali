.class public final synthetic Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lccsanandroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda19;->f$0:Lccsanandroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda19;->f$0:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$4(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/RenderersFactory;

    move-result-object v0

    return-object v0
.end method
