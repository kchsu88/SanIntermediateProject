.class public final synthetic Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;->f$0:Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;->f$0:Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$0$com-google-android-exoplayer2-source-DefaultMediaSourceFactory$DelegateFactoryLoader(Ljava/lang/Class;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object v0

    return-object v0
.end method
