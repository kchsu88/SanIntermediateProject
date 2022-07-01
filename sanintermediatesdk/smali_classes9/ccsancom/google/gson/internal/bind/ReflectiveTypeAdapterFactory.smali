.class public final Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lccsancom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final accessor:Lccsancom/google/gson/internal/reflect/ReflectionAccessor;

.field private final constructorConstructor:Lccsancom/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lccsancom/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

.field private final jsonAdapterFactory:Lccsancom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lccsancom/google/gson/internal/ConstructorConstructor;Lccsancom/google/gson/FieldNamingStrategy;Lccsancom/google/gson/internal/Excluder;Lccsancom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 1
    .param p1, "constructorConstructor"    # Lccsancom/google/gson/internal/ConstructorConstructor;
    .param p2, "fieldNamingPolicy"    # Lccsancom/google/gson/FieldNamingStrategy;
    .param p3, "excluder"    # Lccsancom/google/gson/internal/Excluder;
    .param p4, "jsonAdapterFactory"    # Lccsancom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lccsancom/google/gson/internal/reflect/ReflectionAccessor;->getInstance()Lccsancom/google/gson/internal/reflect/ReflectionAccessor;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lccsancom/google/gson/internal/reflect/ReflectionAccessor;

    .line 58
    iput-object p1, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lccsancom/google/gson/internal/ConstructorConstructor;

    .line 59
    iput-object p2, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

    .line 60
    iput-object p3, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lccsancom/google/gson/internal/Excluder;

    .line 61
    iput-object p4, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lccsancom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 62
    return-void
.end method

.method private createBoundField(Lccsancom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lccsancom/google/gson/reflect/TypeToken;ZZ)Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 19
    .param p1, "context"    # Lccsancom/google/gson/Gson;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "serialize"    # Z
    .param p6, "deserialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/reflect/TypeToken<",
            "*>;ZZ)",
            "Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .line 108
    .local p4, "fieldType":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<*>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    invoke-virtual/range {p4 .. p4}, Lccsancom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v14

    .line 110
    .local v14, "isPrimitive":Z
    const-class v0, Lccsancom/google/gson/annotations/JsonAdapter;

    move-object/from16 v15, p2

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lccsancom/google/gson/annotations/JsonAdapter;

    .line 111
    .local v10, "annotation":Lccsancom/google/gson/annotations/JsonAdapter;
    const/4 v0, 0x0

    .line 112
    .local v0, "mapped":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<*>;"
    if-eqz v10, :cond_0

    .line 113
    iget-object v1, v11, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lccsancom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, v11, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lccsancom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, v2, v12, v13, v10}, Lccsancom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lccsancom/google/gson/internal/ConstructorConstructor;Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;Lccsancom/google/gson/annotations/JsonAdapter;)Lccsancom/google/gson/TypeAdapter;

    move-result-object v0

    .line 116
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 117
    .local v6, "jsonAdapterPresent":Z
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {v12, v13}, Lccsancom/google/gson/Gson;->getAdapter(Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;

    move-result-object v0

    :cond_2
    move-object/from16 v16, v0

    .line 119
    .end local v0    # "mapped":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<*>;"
    .local v16, "mapped":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<*>;"
    move-object/from16 v7, v16

    .line 120
    .local v7, "typeAdapter":Lccsancom/google/gson/TypeAdapter;, "Lccsancom/google/gson/TypeAdapter<*>;"
    new-instance v17, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v18, v10

    .end local v10    # "annotation":Lccsancom/google/gson/annotations/JsonAdapter;
    .local v18, "annotation":Lccsancom/google/gson/annotations/JsonAdapter;
    move v10, v14

    invoke-direct/range {v0 .. v10}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLccsancom/google/gson/TypeAdapter;Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;Z)V

    return-object v17
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLccsancom/google/gson/internal/Excluder;)Z
    .locals 1
    .param p0, "f"    # Ljava/lang/reflect/Field;
    .param p1, "serialize"    # Z
    .param p2, "excluder"    # Lccsancom/google/gson/internal/Excluder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lccsancom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lccsancom/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getBoundFields(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 23
    .param p1, "context"    # Lccsancom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/gson/Gson;",
            "Lccsancom/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    .line 145
    .local p2, "type":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<*>;"
    .local p3, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v7, p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v8, v0

    .line 146
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    return-object v8

    .line 150
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lccsancom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 151
    .end local p2    # "type":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<*>;"
    .end local p3    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v9, "declaredType":Ljava/lang/reflect/Type;
    .local v10, "type":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<*>;"
    .local v11, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v11, v0, :cond_7

    .line 152
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 153
    .local v12, "fields":[Ljava/lang/reflect/Field;
    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_6

    aget-object v6, v12, v15

    .line 154
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v7, v6, v0}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    .line 155
    .local v0, "serialize":Z
    invoke-virtual {v7, v6, v14}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    .line 156
    .local v16, "deserialize":Z
    if-nez v0, :cond_1

    if-nez v16, :cond_1

    .line 157
    goto/16 :goto_4

    .line 159
    :cond_1
    iget-object v1, v7, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->accessor:Lccsancom/google/gson/internal/reflect/ReflectionAccessor;

    invoke-virtual {v1, v6}, Lccsancom/google/gson/internal/reflect/ReflectionAccessor;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 160
    invoke-virtual {v10}, Lccsancom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lccsancom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 161
    .local v17, "fieldType":Ljava/lang/reflect/Type;
    invoke-direct {v7, v6}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v5

    .line 162
    .local v5, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 163
    .local v1, "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move-object v3, v1

    .end local v1    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .local v3, "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .local v4, "size":I
    :goto_2
    if-ge v2, v4, :cond_4

    .line 164
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    move/from16 v18, v0

    .line 166
    .end local v0    # "serialize":Z
    .local v18, "serialize":Z
    nop

    .line 167
    invoke-static/range {v17 .. v17}, Lccsancom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lccsancom/google/gson/reflect/TypeToken;

    move-result-object v19

    .line 166
    move-object/from16 v0, p0

    move-object/from16 p2, v1

    .end local v1    # "name":Ljava/lang/String;
    .local p2, "name":Ljava/lang/String;
    move-object/from16 v1, p1

    move/from16 v20, v2

    .end local v2    # "i":I
    .local v20, "i":I
    move-object v2, v6

    move-object v14, v3

    .end local v3    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .local v14, "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    move-object/from16 v3, p2

    move/from16 v21, v4

    .end local v4    # "size":I
    .local v21, "size":I
    move-object/from16 v4, v19

    move-object/from16 v19, v5

    .end local v5    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v5, v18

    move-object/from16 v22, v6

    .end local v6    # "field":Ljava/lang/reflect/Field;
    .local v22, "field":Ljava/lang/reflect/Field;
    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lccsancom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lccsancom/google/gson/reflect/TypeToken;ZZ)Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v0

    .line 168
    .local v0, "boundField":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    move-object/from16 v1, p2

    .end local p2    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 169
    .local v2, "replaced":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-nez v14, :cond_3

    move-object v3, v2

    .end local v14    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v3    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    goto :goto_3

    .end local v3    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v14    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_3
    move-object v3, v14

    .line 163
    .end local v0    # "boundField":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "replaced":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v14    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v3    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :goto_3
    add-int/lit8 v2, v20, 0x1

    move/from16 v0, v18

    move-object/from16 v5, v19

    move/from16 v4, v21

    move-object/from16 v6, v22

    const/4 v14, 0x0

    .end local v20    # "i":I
    .local v2, "i":I
    goto :goto_2

    .end local v18    # "serialize":Z
    .end local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "size":I
    .end local v22    # "field":Ljava/lang/reflect/Field;
    .local v0, "serialize":Z
    .restart local v4    # "size":I
    .restart local v5    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    :cond_4
    move/from16 v20, v2

    move-object v14, v3

    move/from16 v21, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    .line 171
    .end local v2    # "i":I
    .end local v3    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v4    # "size":I
    .end local v5    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v14    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "field":Ljava/lang/reflect/Field;
    if-nez v14, :cond_5

    .line 153
    .end local v0    # "serialize":Z
    .end local v14    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v16    # "deserialize":Z
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "field":Ljava/lang/reflect/Field;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1

    .line 172
    .restart local v0    # "serialize":Z
    .restart local v14    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .restart local v16    # "deserialize":Z
    .restart local v17    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "field":Ljava/lang/reflect/Field;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    .end local v0    # "serialize":Z
    .end local v14    # "previous":Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v16    # "deserialize":Z
    .end local v17    # "fieldType":Ljava/lang/reflect/Type;
    .end local v19    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "field":Ljava/lang/reflect/Field;
    :cond_6
    invoke-virtual {v10}, Lccsancom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lccsancom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lccsancom/google/gson/reflect/TypeToken;

    move-result-object v10

    .line 177
    invoke-virtual {v10}, Lccsancom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v11

    .line 178
    .end local v12    # "fields":[Ljava/lang/reflect/Field;
    goto/16 :goto_0

    .line 179
    :cond_7
    return-object v8
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 7
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    const-class v0, Lccsancom/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/annotations/SerializedName;

    .line 75
    .local v0, "annotation":Lccsancom/google/gson/annotations/SerializedName;
    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lccsancom/google/gson/FieldNamingStrategy;

    invoke-interface {v1, p1}, Lccsancom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 80
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Lccsancom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "serializedName":Ljava/lang/String;
    invoke-interface {v0}, Lccsancom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "alternates":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1

    .line 83
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 86
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v3, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 89
    .local v6, "alternate":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v6    # "alternate":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    :cond_2
    return-object v3
.end method


# virtual methods
.method public create(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/TypeAdapter;
    .locals 4
    .param p1, "gson"    # Lccsancom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/gson/Gson;",
            "Lccsancom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lccsancom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 95
    .local p2, "type":Lccsancom/google/gson/reflect/TypeToken;, "Lccsancom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lccsancom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x0

    return-object v1

    .line 101
    :cond_0
    iget-object v1, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lccsancom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lccsancom/google/gson/internal/ConstructorConstructor;->get(Lccsancom/google/gson/reflect/TypeToken;)Lccsancom/google/gson/internal/ObjectConstructor;

    move-result-object v1

    .line 102
    .local v1, "constructor":Lccsancom/google/gson/internal/ObjectConstructor;, "Lccsancom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v2, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lccsancom/google/gson/Gson;Lccsancom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lccsancom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-object v2
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .line 65
    iget-object v0, p0, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lccsancom/google/gson/internal/Excluder;

    invoke-static {p1, p2, v0}, Lccsancom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLccsancom/google/gson/internal/Excluder;)Z

    move-result v0

    return v0
.end method
