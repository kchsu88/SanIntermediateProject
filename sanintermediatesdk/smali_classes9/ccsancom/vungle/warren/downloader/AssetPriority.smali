.class public Lccsancom/vungle/warren/downloader/AssetPriority;
.super Ljava/lang/Object;
.source "AssetPriority.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final firstPriority:Ljava/lang/Integer;

.field private final secondPriority:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "firstPriority"    # I
    .param p2, "secondPriority"    # I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/AssetPriority;->firstPriority:Ljava/lang/Integer;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/AssetPriority;->secondPriority:Ljava/lang/Integer;

    .line 14
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 23
    instance-of v0, p1, Lccsancom/vungle/warren/downloader/AssetPriority;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetPriority;->firstPriority:Ljava/lang/Integer;

    move-object v1, p1

    check-cast v1, Lccsancom/vungle/warren/downloader/AssetPriority;

    iget-object v1, v1, Lccsancom/vungle/warren/downloader/AssetPriority;->firstPriority:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 25
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 26
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetPriority;->secondPriority:Ljava/lang/Integer;

    move-object v2, p1

    check-cast v2, Lccsancom/vungle/warren/downloader/AssetPriority;

    iget-object v2, v2, Lccsancom/vungle/warren/downloader/AssetPriority;->secondPriority:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    return v1

    .line 28
    :cond_0
    return v0

    .line 30
    .end local v0    # "ret":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssetPriority{firstPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetPriority;->firstPriority:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetPriority;->secondPriority:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
