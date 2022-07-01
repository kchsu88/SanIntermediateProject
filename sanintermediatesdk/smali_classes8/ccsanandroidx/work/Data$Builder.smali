.class public final Lccsanandroidx/work/Data$Builder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lccsanandroidx/work/Data;
    .locals 2

    .line 769
    new-instance v0, Lccsanandroidx/work/Data;

    iget-object v1, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Lccsanandroidx/work/Data;-><init>(Ljava/util/Map;)V

    .line 772
    .local v0, "data":Lccsanandroidx/work/Data;
    invoke-static {v0}, Lccsanandroidx/work/Data;->toByteArray(Lccsanandroidx/work/Data;)[B

    .line 773
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroidx/work/Data$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 723
    if-nez p2, :cond_0

    .line 724
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 726
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 727
    .local v0, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Boolean;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Byte;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Integer;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Long;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Float;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/Double;

    if-eq v0, v1, :cond_8

    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 742
    :cond_1
    const-class v1, [Z

    if-ne v0, v1, :cond_2

    .line 743
    iget-object v1, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, [Z

    check-cast v2, [Z

    invoke-static {v2}, Lccsanandroidx/work/Data;->convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 744
    :cond_2
    const-class v1, [B

    if-ne v0, v1, :cond_3

    .line 745
    iget-object v1, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lccsanandroidx/work/Data;->convertPrimitiveByteArray([B)[Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 746
    :cond_3
    const-class v1, [I

    if-ne v0, v1, :cond_4

    .line 747
    iget-object v1, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v2}, Lccsanandroidx/work/Data;->convertPrimitiveIntArray([I)[Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 748
    :cond_4
    const-class v1, [J

    if-ne v0, v1, :cond_5

    .line 749
    iget-object v1, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v2}, Lccsanandroidx/work/Data;->convertPrimitiveLongArray([J)[Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 750
    :cond_5
    const-class v1, [F

    if-ne v0, v1, :cond_6

    .line 751
    iget-object v1, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, [F

    check-cast v2, [F

    invoke-static {v2}, Lccsanandroidx/work/Data;->convertPrimitiveFloatArray([F)[Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 752
    :cond_6
    const-class v1, [D

    if-ne v0, v1, :cond_7

    .line 753
    iget-object v1, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, [D

    check-cast v2, [D

    invoke-static {v2}, Lccsanandroidx/work/Data;->convertPrimitiveDoubleArray([D)[Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 755
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 756
    const-string v3, "Key %s has invalid type %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 741
    :cond_8
    :goto_0
    iget-object v1, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .end local v0    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object p0
.end method

.method public putAll(Lccsanandroidx/work/Data;)Lccsanandroidx/work/Data$Builder;
    .locals 1
    .param p1, "data"    # Lccsanandroidx/work/Data;

    .line 689
    iget-object v0, p1, Lccsanandroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lccsanandroidx/work/Data$Builder;->putAll(Ljava/util/Map;)Lccsanandroidx/work/Data$Builder;

    .line 690
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lccsanandroidx/work/Data$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lccsanandroidx/work/Data$Builder;"
        }
    .end annotation

    .line 703
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 704
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 705
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 706
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lccsanandroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanandroidx/work/Data$Builder;

    .line 707
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 708
    :cond_0
    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 519
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    return-object p0
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 531
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Lccsanandroidx/work/Data;->convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-object p0
.end method

.method public putByte(Ljava/lang/String;B)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 543
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    return-object p0
.end method

.method public putByteArray(Ljava/lang/String;[B)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 555
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Lccsanandroidx/work/Data;->convertPrimitiveByteArray([B)[Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    return-object p0
.end method

.method public putDouble(Ljava/lang/String;D)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 639
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    return-object p0
.end method

.method public putDoubleArray(Ljava/lang/String;[D)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 651
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Lccsanandroidx/work/Data;->convertPrimitiveDoubleArray([D)[Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 615
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-object p0
.end method

.method public putFloatArray(Ljava/lang/String;[F)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 627
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Lccsanandroidx/work/Data;->convertPrimitiveFloatArray([F)[Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 567
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-object p0
.end method

.method public putIntArray(Ljava/lang/String;[I)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 579
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Lccsanandroidx/work/Data;->convertPrimitiveIntArray([I)[Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 591
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    return-object p0
.end method

.method public putLongArray(Ljava/lang/String;[J)Lccsanandroidx/work/Data$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 603
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-static {p2}, Lccsanandroidx/work/Data;->convertPrimitiveLongArray([J)[Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/work/Data$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    return-object p0
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroidx/work/Data$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 675
    iget-object v0, p0, Lccsanandroidx/work/Data$Builder;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    return-object p0
.end method
