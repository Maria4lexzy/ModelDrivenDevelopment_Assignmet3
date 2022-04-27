/**
 * generated by Xtext 2.26.0
 */
package dk.sdu.mmmi.mdsd.math;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Program</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link dk.sdu.mmmi.mdsd.math.Program#getName <em>Name</em>}</li>
 *   <li>{@link dk.sdu.mmmi.mdsd.math.Program#getExt <em>Ext</em>}</li>
 *   <li>{@link dk.sdu.mmmi.mdsd.math.Program#getMath <em>Math</em>}</li>
 * </ul>
 *
 * @see dk.sdu.mmmi.mdsd.math.MathPackage#getProgram()
 * @model
 * @generated
 */
public interface Program extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see dk.sdu.mmmi.mdsd.math.MathPackage#getProgram_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link dk.sdu.mmmi.mdsd.math.Program#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Ext</b></em>' containment reference list.
   * The list contents are of type {@link dk.sdu.mmmi.mdsd.math.External}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Ext</em>' containment reference list.
   * @see dk.sdu.mmmi.mdsd.math.MathPackage#getProgram_Ext()
   * @model containment="true"
   * @generated
   */
  EList<External> getExt();

  /**
   * Returns the value of the '<em><b>Math</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Math</em>' containment reference.
   * @see #setMath(MathExp)
   * @see dk.sdu.mmmi.mdsd.math.MathPackage#getProgram_Math()
   * @model containment="true"
   * @generated
   */
  MathExp getMath();

  /**
   * Sets the value of the '{@link dk.sdu.mmmi.mdsd.math.Program#getMath <em>Math</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Math</em>' containment reference.
   * @see #getMath()
   * @generated
   */
  void setMath(MathExp value);

} // Program
