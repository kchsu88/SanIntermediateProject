.class public final synthetic Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$4$com-google-android-exoplayer2-source-DefaultMediaSourceFactory$DelegateFactoryLoader()Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object v0

    return-object v0
.end method
