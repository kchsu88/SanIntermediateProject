.class public Lccsanandroidx/versionedparcelable/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final INNER_BUNDLE_KEY:Ljava/lang/String; = "a"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Lccsanandroidx/versionedparcelable/VersionedParcelable;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsanandroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 82
    new-instance v0, Lccsanandroidx/versionedparcelable/VersionedParcelStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsanandroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 83
    .local v0, "stream":Lccsanandroidx/versionedparcelable/VersionedParcelStream;
    invoke-virtual {v0}, Lccsanandroidx/versionedparcelable/VersionedParcelStream;->readVersionedParcelable()Lccsanandroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    return-object v1
.end method

.method public static fromParcelable(Lccsanandroid/os/Parcelable;)Lccsanandroidx/versionedparcelable/VersionedParcelable;
    .locals 2
    .param p0, "p"    # Lccsanandroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsanandroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Lccsanandroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    .line 58
    instance-of v0, p0, Lccsanandroidx/versionedparcelable/ParcelImpl;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p0

    check-cast v0, Lccsanandroidx/versionedparcelable/ParcelImpl;

    invoke-virtual {v0}, Lccsanandroidx/versionedparcelable/ParcelImpl;->getVersionedParcel()Lccsanandroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parcel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVersionedParcelable(Lccsanandroid/os/Bundle;Ljava/lang/String;)Lccsanandroidx/versionedparcelable/VersionedParcelable;
    .locals 3
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsanandroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Lccsanandroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsanandroid/os/Bundle;

    .line 110
    .local v1, "innerBundle":Lccsanandroid/os/Bundle;
    if-nez v1, :cond_0

    .line 111
    return-object v0

    .line 113
    :cond_0
    const-class v2, Lccsanandroidx/versionedparcelable/ParcelUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 114
    const-string v2, "a"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Lccsanandroidx/versionedparcelable/ParcelUtils;->fromParcelable(Lccsanandroid/os/Parcelable;)Lccsanandroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    .end local v1    # "innerBundle":Lccsanandroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/RuntimeException;
    return-object v0
.end method

.method public static getVersionedParcelableList(Lccsanandroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsanandroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Lccsanandroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsanandroid/os/Bundle;

    .line 147
    .local v1, "innerBundle":Lccsanandroid/os/Bundle;
    const-class v2, Lccsanandroidx/versionedparcelable/ParcelUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 148
    const-string v2, "a"

    .line 149
    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    .local v2, "parcelableArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/os/Parcelable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/os/Parcelable;

    .line 151
    .local v4, "parcelable":Lccsanandroid/os/Parcelable;
    invoke-static {v4}, Lccsanandroidx/versionedparcelable/ParcelUtils;->fromParcelable(Lccsanandroid/os/Parcelable;)Lccsanandroidx/versionedparcelable/VersionedParcelable;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .end local v4    # "parcelable":Lccsanandroid/os/Parcelable;
    goto :goto_0

    .line 153
    :cond_0
    return-object v0

    .line 154
    .end local v1    # "innerBundle":Lccsanandroid/os/Bundle;
    .end local v2    # "parcelableArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/os/Parcelable;>;"
    :catch_0
    move-exception v1

    .line 157
    const/4 v1, 0x0

    return-object v1
.end method

.method public static putVersionedParcelable(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroidx/versionedparcelable/VersionedParcelable;)V
    .locals 3
    .param p0, "b"    # Lccsanandroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Lccsanandroidx/versionedparcelable/VersionedParcelable;

    .line 91
    if-nez p2, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "innerBundle":Lccsanandroid/os/Bundle;
    invoke-static {p2}, Lccsanandroidx/versionedparcelable/ParcelUtils;->toParcelable(Lccsanandroidx/versionedparcelable/VersionedParcelable;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 96
    invoke-virtual {p0, p1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 97
    return-void
.end method

.method public static putVersionedParcelableList(Lccsanandroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p0, "b"    # Lccsanandroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lccsanandroidx/versionedparcelable/VersionedParcelable;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<+Lccsanandroidx/versionedparcelable/VersionedParcelable;>;"
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 127
    .local v0, "innerBundle":Lccsanandroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v1, "toWrite":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/os/Parcelable;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/versionedparcelable/VersionedParcelable;

    .line 129
    .local v3, "obj":Lccsanandroidx/versionedparcelable/VersionedParcelable;
    invoke-static {v3}, Lccsanandroidx/versionedparcelable/ParcelUtils;->toParcelable(Lccsanandroidx/versionedparcelable/VersionedParcelable;)Lccsanandroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v3    # "obj":Lccsanandroidx/versionedparcelable/VersionedParcelable;
    goto :goto_0

    .line 131
    :cond_0
    const-string v2, "a"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 132
    invoke-virtual {p0, p1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 133
    return-void
.end method

.method public static toOutputStream(Lccsanandroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "obj"    # Lccsanandroidx/versionedparcelable/VersionedParcelable;
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 70
    new-instance v0, Lccsanandroidx/versionedparcelable/VersionedParcelStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lccsanandroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 71
    .local v0, "stream":Lccsanandroidx/versionedparcelable/VersionedParcelStream;
    invoke-virtual {v0, p0}, Lccsanandroidx/versionedparcelable/VersionedParcelStream;->writeVersionedParcelable(Lccsanandroidx/versionedparcelable/VersionedParcelable;)V

    .line 72
    invoke-virtual {v0}, Lccsanandroidx/versionedparcelable/VersionedParcelStream;->closeField()V

    .line 73
    return-void
.end method

.method public static toParcelable(Lccsanandroidx/versionedparcelable/VersionedParcelable;)Lccsanandroid/os/Parcelable;
    .locals 1
    .param p0, "obj"    # Lccsanandroidx/versionedparcelable/VersionedParcelable;

    .line 48
    new-instance v0, Lccsanandroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p0}, Lccsanandroidx/versionedparcelable/ParcelImpl;-><init>(Lccsanandroidx/versionedparcelable/VersionedParcelable;)V

    return-object v0
.end method
