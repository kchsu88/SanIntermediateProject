.class public interface abstract annotation Lccsankotlin/ExperimentalMultiplatform;
.super Ljava/lang/Object;
.source "Multiplatform.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\u0008\u0087\u0002\u0018\u00002\u00020\u0001B\u0000\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009120\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lccsankotlin/ExperimentalMultiplatform;",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lccsankotlin/annotation/MustBeDocumented;
.end annotation

.annotation runtime Lccsankotlin/annotation/Retention;
    value = .enum Lccsankotlin/annotation/AnnotationRetention;->BINARY:Lccsankotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lccsankotlin/annotation/Target;
    allowedTargets = {
        .enum Lccsankotlin/annotation/AnnotationTarget;->CLASS:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->ANNOTATION_CLASS:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->FIELD:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->LOCAL_VARIABLE:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->VALUE_PARAMETER:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->CONSTRUCTOR:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->FUNCTION:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY_GETTER:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY_SETTER:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->TYPEALIAS:Lccsankotlin/annotation/AnnotationTarget;
    }
.end annotation
