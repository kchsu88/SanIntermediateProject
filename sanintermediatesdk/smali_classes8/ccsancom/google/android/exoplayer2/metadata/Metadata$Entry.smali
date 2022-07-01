.class public interface abstract Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/metadata/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation


# virtual methods
.method public abstract getWrappedMetadataBytes()[B
.end method

.method public abstract getWrappedMetadataFormat()Lccsancom/google/android/exoplayer2/Format;
.end method

.method public abstract populateMediaMetadata(Lccsancom/google/android/exoplayer2/MediaMetadata$Builder;)V
.end method
