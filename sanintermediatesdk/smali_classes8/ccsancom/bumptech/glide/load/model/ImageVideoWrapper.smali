.class public Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;
.super Ljava/lang/Object;
.source "ImageVideoWrapper.java"


# instance fields
.field private final fileDescriptor:Lccsanandroid/os/ParcelFileDescriptor;

.field private final streamData:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lccsanandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "streamData"    # Ljava/io/InputStream;
    .param p2, "fileDescriptor"    # Lccsanandroid/os/ParcelFileDescriptor;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    .line 16
    iput-object p2, p0, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Lccsanandroid/os/ParcelFileDescriptor;

    .line 17
    return-void
.end method


# virtual methods
.method public getFileDescriptor()Lccsanandroid/os/ParcelFileDescriptor;
    .locals 1

    .line 24
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;->fileDescriptor:Lccsanandroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .line 20
    iget-object v0, p0, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;->streamData:Ljava/io/InputStream;

    return-object v0
.end method
