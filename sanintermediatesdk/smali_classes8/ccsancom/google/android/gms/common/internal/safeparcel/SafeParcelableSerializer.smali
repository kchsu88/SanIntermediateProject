.class public final Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeFromBytes([BLccsanandroid/os/Parcelable$Creator;)Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">([B",
            "Lccsanandroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lccsanandroid/os/Parcel;->unmarshall([BII)V

    .line 10
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->setDataPosition(I)V

    .line 11
    invoke-interface {p1, v0}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 12
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 13
    return-object p0
.end method

.method public static deserializeFromIntentExtra(Lccsanandroid/content/Intent;Ljava/lang/String;Lccsanandroid/os/Parcelable$Creator;)Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Lccsanandroid/content/Intent;",
            "Ljava/lang/String;",
            "Lccsanandroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lccsanandroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    invoke-static {p0, p2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLccsanandroid/os/Parcelable$Creator;)Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeFromString(Ljava/lang/String;Lccsanandroid/os/Parcelable$Creator;)Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Lccsanandroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Lccsancom/google/android/gms/common/util/Base64Utils;->decodeUrlSafe(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLccsanandroid/os/Parcelable$Creator;)Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeIterableFromBundle(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Lccsanandroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lccsanandroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1}, Lccsanandroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, [B

    .line 25
    invoke-static {v2, p2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLccsanandroid/os/Parcelable$Creator;)Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object p1
.end method

.method public static deserializeIterableFromIntentExtra(Lccsanandroid/content/Intent;Ljava/lang/String;Lccsanandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Lccsanandroid/content/Intent;",
            "Ljava/lang/String;",
            "Lccsanandroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lccsanandroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, [B

    .line 47
    invoke-static {v2, p2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLccsanandroid/os/Parcelable$Creator;)Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object p1
.end method

.method public static serializeIterableToBundle(Ljava/lang/Iterable;Lccsanandroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lccsanandroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 16
    invoke-static {v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, p2, v0}, Lccsanandroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 19
    return-void
.end method

.method public static serializeIterableToIntentExtra(Ljava/lang/Iterable;Lccsanandroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lccsanandroid/content/Intent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    .line 38
    invoke-static {v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Lccsanandroid/content/Intent;

    .line 41
    return-void
.end method

.method public static serializeToBytes(Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(TT;)[B"
        }
    .end annotation

    .line 2
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 3
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 4
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 5
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 6
    return-object p0
.end method

.method public static serializeToIntentExtra(Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lccsanandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(TT;",
            "Lccsanandroid/content/Intent;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;[B)Lccsanandroid/content/Intent;

    .line 31
    return-void
.end method

.method public static serializeToString(Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object p0

    invoke-static {p0}, Lccsancom/google/android/gms/common/util/Base64Utils;->encodeUrlSafe([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
